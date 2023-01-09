// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) => MessageDto(
      id: json['id'] as String?,
      autoId: (json['autoId'] as num).toDouble(),
      messageType:
          $enumDecodeNullable(_$MessageTypeEnumEnumMap, json['messageType']),
      sessionId: json['sessionId'] as String?,
      isReverse: json['isReverse'] as bool? ?? false,
      isBanner: json['isBanner'] as bool? ?? false,
      senderId: json['senderId'] as String,
      receiverId: json['receiverId'] as String,
      content: json['content'],
      creationTime: DateTime.parse(json['creationTime'] as String),
      forwardMessageId: json['forwardMessageId'] as String?,
      keyName: json['keyName'] as String?,
      keyValue: json['keyValue'] as String?,
      forwardMessage: json['forwardMessage'] == null
          ? null
          : MessageDto.fromJson(json['forwardMessage'] as Map<String, dynamic>),
      quoteMessage: json['quoteMessage'] == null
          ? null
          : MessageDto.fromJson(json['quoteMessage'] as Map<String, dynamic>),
      state: $enumDecodeNullable(_$MessageStateEnumEnumMap, json['state']) ??
          MessageStateEnum.undefined,
      rollbackTime: json['rollbackTime'] == null
          ? null
          : DateTime.parse(json['rollbackTime'] as String),
    );

Map<String, dynamic> _$MessageDtoToJson(MessageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': _$MessageStateEnumEnumMap[instance.state]!,
      'autoId': instance.autoId,
      'messageType': _$MessageTypeEnumEnumMap[instance.messageType],
      'sessionId': instance.sessionId,
      'isReverse': instance.isReverse,
      'isBanner': instance.isBanner,
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'content': instance.content,
      'forwardMessageId': instance.forwardMessageId,
      'keyName': instance.keyName,
      'keyValue': instance.keyValue,
      'forwardMessage': instance.forwardMessage,
      'quoteMessage': instance.quoteMessage,
      'creationTime': instance.creationTime.toIso8601String(),
      'rollbackTime': instance.rollbackTime?.toIso8601String(),
    };

const _$MessageTypeEnumEnumMap = {
  MessageTypeEnum.text: 0,
  MessageTypeEnum.cmd: 1,
  MessageTypeEnum.image: 2,
  MessageTypeEnum.sound: 3,
  MessageTypeEnum.video: 4,
  MessageTypeEnum.file: 5,
  MessageTypeEnum.link: 6,
  MessageTypeEnum.location: 7,
  MessageTypeEnum.contacts: 8,
  MessageTypeEnum.redenvelope: 9,
  MessageTypeEnum.html: 10,
  MessageTypeEnum.article: 11,
  MessageTypeEnum.history: 12,
  MessageTypeEnum.notice: 13,
};

const _$MessageStateEnumEnumMap = {
  MessageStateEnum.undefined: 'undefined',
  MessageStateEnum.success: 'success',
  MessageStateEnum.pending: 'pending',
  MessageStateEnum.fail: 'fail',
  MessageStateEnum.compress: 'compress',
  MessageStateEnum.downLoading: 'downLoading',
  MessageStateEnum.upLoading: 'upLoading',
};
