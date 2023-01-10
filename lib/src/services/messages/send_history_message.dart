import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

import 'send_message.dart';

part 'send_history_message.g.dart';

@JsonSerializable()
class SendHistoryMessage extends SendMessage<HistoryContentInput> {
  ///
  @override
  String get apiUrl => '/api/app/message/send-history-message';

  ///FromJson
  factory SendHistoryMessage.fromJson(Map<String, dynamic> json) =>
      _$SendHistoryMessageFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SendHistoryMessageToJson(this);

  ///
  SendHistoryMessage({
    required super.senderId,
    required super.receiverId,
    super.keyName,
    super.keyValue,
    super.quoteMessageId,
    required super.content,
    required super.sessionUnitId,
    super.ignoreConnections,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });
}
