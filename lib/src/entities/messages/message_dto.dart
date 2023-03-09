import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import '../base/id_input.dart';
import '../../../enums.dart';

part 'message_dto.g.dart';
part 'message_dto.i.dart';

/// 消息
@JsonSerializable()
class MessageDto extends IdInput<int?> {
  ///
  MessageDto({
    super.id,
    this.autoId,
    required this.messageType,
    this.sessionId,
    this.isReverse = false,
    this.isBanner = false,
    required this.senderId,
    // required this.media,
    // this.senderType = MediaTypeEnum.personal,
    required this.receiverId,
    // this.receiverType = MediaTypeEnum.personal,
    required this.content,
    required this.creationTime,
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
    this.autoId,
    required this.messageType,
    this.sessionId,
    this.isReverse = false,
    this.isBanner = false,
    required this.senderId,
    // required this.media,
    // this.senderType = MediaTypeEnum.personal,
    required this.receiverId,
    // this.receiverType = MediaTypeEnum.personal,
    required this.content,
    required this.creationTime,
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
  double? autoId;

  /// 消息类型
  final MessageTypeEnum? messageType;

  /// 会话Id
  final String? sessionId;

  /// 是否相反的（发送人与接收人反转）
  final bool isReverse;

  ///是否通栏
  final bool isBanner;

  ///  发送人
  final int senderId;

  // /// 媒体类型
  // /// 0:未定义, 1:个人, 2:群, 3:订阅号,
  // /// 4:公众号, 5:部门群, 6:课程群,
  // /// 7:任务群,8:服务号群组,9:工程项目群,10工程标准群
  // final MediaTypeEnum media;

  // /// 发送人媒体类型
  // final MediaTypeEnum senderType;

  /// 接收Id(接收人UserId || 群 RoomId)
  final int receiverId;

  // /// 接收人媒体类型
  // final MediaTypeEnum receiverType;

  /// final List<String>? receiverList;

  /// 消息内容
  final dynamic content;

  /// 转发来源Id(转发才有)
  final int? forwardMessageId;

  /// 扩展（键名）根据业务自义，如:"courseId"、"course-userId"、"erp-userId"
  final String? keyName;

  /// 扩展（键值）根据业务自义,如："123456789"、"02b7d668-02ca-428f-b88c-b8adac2c5044"、"admin"
  final String? keyValue;

  ///转发消息
  final MessageDto? forwardMessage;

  ///引用消息
  late final MessageDto? quoteMessage;

  /// 发送时间
  final DateTime creationTime;

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
    return _loginUserId != null && senderId.toString() == _loginUserId;
  }

  ///
  bool get isRollbacked => rollbackTime != null;

  ///撤回消息
  void rollbackMessage() {
    rollbackTime = DateTime.now();
  }

  ///设置登录用户loginUserId
  MessageDto setLoginUserId(loginUserId) {
    _loginUserId = loginUserId;
    return this;
  }

  ///
  void setMessageState(MessageStateEnum messageStateEnum) {
    state = messageStateEnum;
  }

  ///
  void setLogId(double value) {
    autoId = value;
  }

  ///FromJson
  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

  ///ToJson

  Map<String, dynamic> toJson() => _$MessageDtoToJson(this);

  @override
  String toString() {
    return jsonEncode(toJson());
  }

  String getMessageTypeString() => _$MessageTypeStringMap[messageType!]!;
}
