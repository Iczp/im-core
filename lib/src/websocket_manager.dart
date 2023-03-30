import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:im_core/entities.dart';
import 'package:im_core/src/services/auth/token_manager.dart';
import 'package:logger/logger.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;

import '../commons.dart';
import '../pushs.dart';

class WebWocketManager {
  //私有构造函数
  WebWocketManager._internal();

  //保存单例
  static final _singleton = WebWocketManager._internal();

  //工厂构造函数
  static WebWocketManager get singleton => _singleton;

  static IOWebSocketChannel? _webSocketChannel;
  static IOWebSocketChannel get webSocketChannel => _webSocketChannel!;
  late Timer? _heartbeatTimer;

  final _chatController = StreamController<MessageDto>();
  StreamController<MessageDto> get chatController => _chatController;
  final _streamController = StreamController<PushPayload>();

  void connect(ConnectDto connectDto, {String? authorization}) {
    final channel = IOWebSocketChannel.connect(
      connectDto.webSocketUrl,
      headers: <String, dynamic>{
        'deviceId': 'admin-----------test',
        'authorization': TokenManager.authorization,
      },
      pingInterval: Duration(seconds: connectDto.pingIntervalSeconds),
      connectTimeout: Duration(seconds: connectDto.timeoutSeconds),
    );

    Logger().d('websocket connect to:${connectDto.webSocketUrl}');
    Logger().d('readyState:${channel.innerWebSocket?.readyState}');
    // heartbeat
    _heartbeatTimer = Timer.periodic(
      Duration(seconds: connectDto.heartbeatSeconds),
      (timer) {
        final value = DateTime.now().microsecondsSinceEpoch.toString();
        Logger().d('send heartbeat:$value');
        Logger().d('channel.closeCode:${channel.closeCode}');

        channel.sink.add(value);
      },
    );

    // _heartbeatTimer?.cancel();
    var d = channel.stream.listen((message) {
      Logger().w('received message:$message');

      if (Checker.isJson(message)) {
        var json = jsonDecode(message);
        var pushPayload = PushPayload.fromJson(json);
        _streamController.sink.add(pushPayload);
        Logger().w('pushPayload:${pushPayload.payload}');
        Logger().w('command:${pushPayload.command}');
      }

      // channel.sink.add('received!');
      // channel.sink.close(status.goingAway);
    });
    //onDone
    d.onDone(() {
      Logger().w('onDone claseCode:${channel.closeCode}');
      stopHeartbeat();

      // Manually disconnect 1005, network problem 1002,
      if (channel.closeCode != null) {
        //system close code
        switch (channel.closeCode) {
          // case 1001:
          case WebSocketStatus.goingAway:
            Logger().w('network problem 1002');
            break;
          // case 1002:
          case WebSocketStatus.protocolError:
            Logger().w('network problem 1002');
            break;
          // case 1005:
          case WebSocketStatus.noStatusReceived:
            Logger().w('Manually disconnect 1005');
            break;
          case 1006:
            Logger().w('1006 非正常关闭');
            break;
        }
      }
      if (channel.closeReason != null && channel.closeReason!.isNotEmpty) {
        //
        Logger().w('Server close Message');
      }
      d.cancel();
      channel.sink.close(status.goingAway);
    });
    //onError
    d.onError((e) {
      Logger().e('onError');
      debugPrint('Connection exception $e');
    });
  }

  void stopHeartbeat() {
    Logger().e('stopHeartbeat');
    _heartbeatTimer?.cancel();
  }

  StreamSubscription<PushPayload> onMessage(
    void Function(PushPayload)? onData, {
    void Function()? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    return _streamController.stream.listen(
      onData,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }
}
