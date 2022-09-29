import 'package:flutter/cupertino.dart';
import '../base/id_input.dart';
import '../../enums.dart';

/// 消息
class MessageDto<TContent> extends IdInput<String?> {
  ///
  MessageDto({
    super.id,
    required this.logId,
    required this.type,
    this.sessionId,
    this.isReverse = false,
    this.isBanner = false,
    required this.sender,
    required this.media,
    this.senderType = MediaTypeEnum.personal,
    required this.receiver,
    this.receiverType = MediaTypeEnum.personal,
    required this.content,
    required this.sendTime,
    this.forwardMessageId,
    this.keyName,
    this.keyValue,
    this.forwardMessage,
    this.quoteMessage,
    this.state = MessageStateEnum.undefined,
    this.rollbackTime,
  })  : _globalKey = GlobalKey(),
        _contentGlobalKey = GlobalKey(),
        _layerLink = LayerLink(),
        _contentLayerLink = LayerLink();

  ///
  MessageDto.clone({
    required GlobalKey globalKey,
    required GlobalKey contentGlobalKey,
    required LayerLink layerLink,
    required LayerLink contentLayerLink,
    super.id,
    required this.logId,
    required this.type,
    this.sessionId,
    this.isReverse = false,
    this.isBanner = false,
    required this.sender,
    required this.media,
    this.senderType = MediaTypeEnum.personal,
    required this.receiver,
    this.receiverType = MediaTypeEnum.personal,
    required this.content,
    required this.sendTime,
    this.forwardMessageId,
    this.keyName,
    this.keyValue,
    this.forwardMessage,
    this.quoteMessage,
    this.state = MessageStateEnum.undefined,
    this.rollbackTime,
  })  : _globalKey = globalKey,
        _contentGlobalKey = contentGlobalKey,
        _layerLink = layerLink,
        _contentLayerLink = contentLayerLink;

  /// message GlobalKey
  final GlobalKey _globalKey;

  /// message content GlobalKey
  final GlobalKey _contentGlobalKey;

  /// message LayerLink;
  final LayerLink _layerLink;

  /// message content LayerLink;
  final LayerLink _contentLayerLink;

  ///
  MessageStateEnum state;

  ///
  String? _loginUserId;

  /// 消息Id,有序
  double logId;

  /// 消息类型
  final MessageTypeEnum type;

  /// 会话Id
  final String? sessionId;

  /// 是否相反的（发送人与接收人反转）
  final bool isReverse;

  ///是否通栏
  final bool isBanner;

  ///  发送人
  final String sender;

  /// 媒体类型
  /// 0:未定义, 1:个人, 2:群, 3:订阅号,
  /// 4:公众号, 5:部门群, 6:课程群,
  /// 7:任务群,8:服务号群组,9:工程项目群,10工程标准群
  final MediaTypeEnum media;

  /// 发送人媒体类型
  final MediaTypeEnum senderType;

  /// 接收Id(接收人UserId || 群 RoomId)
  final String receiver;

  /// 接收人媒体类型
  final MediaTypeEnum receiverType;

  /// final List<String>? receiverList;

  /// 消息内容
  final TContent content;

  /// 转发来源Id(转发才有)
  final String? forwardMessageId;

  /// 扩展（键名）根据业务自义，如:"courseId"、"course-userId"、"erp-userId"
  final String? keyName;

  /// 扩展（键值）根据业务自义,如："123456789"、"02b7d668-02ca-428f-b88c-b8adac2c5044"、"admin"
  final String? keyValue;

  ///转发消息
  final MessageDto? forwardMessage;

  ///引用消息
  late final MessageDto? quoteMessage;

  /// 发送时间
  final DateTime sendTime;

  ///
  DateTime? rollbackTime;

  /// message item layerLink
  GlobalKey get globalKey => _globalKey;

  /// message content GlobalKey
  GlobalKey get contentGlobalKey => _contentGlobalKey;

  /// message item layerLink
  LayerLink get layerLink => _layerLink;

  ///
  LayerLink get contentLayerLink => _contentLayerLink;

  ///
  get heroTag => 'heroTag_$_globalKey';

  ///
  bool isSelf() {
    return _loginUserId != null && sender == _loginUserId;
  }

  ///
  bool get isRollbacked => rollbackTime != null;

  ///撤回消息
  void rollbackMessage() {
    rollbackTime = DateTime.now();
  }

  ///设置登录用户loginUserId
  MessageDto<TContent> setLoginUserId(loginUserId) {
    _loginUserId = loginUserId;
    return this;
  }

  ///
  void setMessageState(MessageStateEnum messageStateEnum) {
    state = messageStateEnum;
  }

  ///
  void setLogId(double value) {
    logId = value;
  }

  ///
  factory MessageDto.fromJson(Map<String, dynamic> json) => MessageDto(
        id: json['id'],
        logId: json['logId'],
        type: json['type'],
        sessionId: json['sessionId'],
        isReverse: json['isReverse'],
        isBanner: json['isBanner'],
        sender: json['sender'],
        senderType: json['senderType'],
        media: json['media'],
        receiver: json['receiver'],
        receiverType: json['receiverType'],
        content: json['content'],
        sendTime: json['sendTime'],
        forwardMessageId: json['forwardMessageId'],
        keyName: json['keyName'],
        keyValue: json['keyValue'],
        // forwardMessage: json['forwardMessage'],
        quoteMessage: MessageDto.fromJson(json['quoteMessage']),
        state: json['state'],
        rollbackTime: json['state'],
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'logId': logId,
        'type': type,
        'sessionId': sessionId,
        'isReverse': isReverse,
        'isBanner': isBanner,
        'sender': sender,
        'media': media,
        'senderType': senderType,
        'receiver': receiver,
        'receiverType': receiverType,
        'content': content,
        'sendTime': sendTime,
        'forwardMessageId': forwardMessageId,
        'keyName': keyName,
        'keyValue': keyValue,
        // 'forwardMessage': forwardMessage?.toJson(),
        'quoteMessage': quoteMessage?.toJson(),
        'state': state,
        'rollbackTime': rollbackTime,
      };
}
