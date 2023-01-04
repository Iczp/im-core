// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) => MessageDto(
      id: json['id'] as String?,
      autoId: (json['autoId'] as num).toDouble(),
      type: $enumDecodeNullable(_$MessageTypeEnumEnumMap, json['type']),
      sessionId: json['sessionId'] as String?,
      isReverse: json['isReverse'] as bool? ?? false,
      isBanner: json['isBanner'] as bool? ?? false,
      senderId: json['senderId'] as String,
      receiverId: json['receiverId'] as String,
      content: json['content'],
      sendTime: json['sendTime'] == null
          ? null
          : DateTime.parse(json['sendTime'] as String),
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
      'type': _$MessageTypeEnumEnumMap[instance.type],
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
      'sendTime': instance.sendTime?.toIso8601String(),
      'rollbackTime': instance.rollbackTime?.toIso8601String(),
    };

const _$MessageTypeEnumEnumMap = {
  MessageTypeEnum.undefined: 'undefined',
  MessageTypeEnum.text: 'text',
  MessageTypeEnum.image: 'image',
  MessageTypeEnum.sound: 'sound',
  MessageTypeEnum.video: 'video',
  MessageTypeEnum.link: 'link',
  MessageTypeEnum.wordflow: 'wordflow',
  MessageTypeEnum.location: 'location',
  MessageTypeEnum.contacts: 'contacts',
  MessageTypeEnum.cmd: 'cmd',
  MessageTypeEnum.course: 'course',
  MessageTypeEnum.redenvelope: 'redenvelope',
  MessageTypeEnum.html: 'html',
  MessageTypeEnum.article: 'article',
  MessageTypeEnum.history: 'history',
  MessageTypeEnum.file: 'file',
  MessageTypeEnum.notice: 'notice',
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
