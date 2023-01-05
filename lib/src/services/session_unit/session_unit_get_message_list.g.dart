// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_unit_get_message_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionUnitGetMessageList _$SessionUnitGetMessageListFromJson(
        Map<String, dynamic> json) =>
    SessionUnitGetMessageList(
      id: json['id'] as String?,
      senderId: json['senderId'] as String?,
      messageType:
          $enumDecodeNullable(_$MessageTypeEnumEnumMap, json['messageType']),
      isRemind: json['isRemind'] as bool? ?? false,
      minAutoId: json['minAutoId'] as int?,
      maxAutoId: json['maxAutoId'] as int?,
      maxResultCount: json['maxResultCount'] as int? ?? 10,
      skipCount: json['skipCount'] as int? ?? 0,
      sorting: json['sorting'] as String?,
      keyword: json['keyword'] as String?,
    );

Map<String, dynamic> _$SessionUnitGetMessageListToJson(
        SessionUnitGetMessageList instance) =>
    <String, dynamic>{
      'maxResultCount': instance.maxResultCount,
      'skipCount': instance.skipCount,
      'sorting': instance.sorting,
      'keyword': instance.keyword,
      'id': instance.id,
      'senderId': instance.senderId,
      'messageType': _$MessageTypeEnumEnumMap[instance.messageType],
      'isRemind': instance.isRemind,
      'minAutoId': instance.minAutoId,
      'maxAutoId': instance.maxAutoId,
    };

const _$MessageTypeEnumEnumMap = {
  MessageTypeEnum.text: 'text',
  MessageTypeEnum.cmd: 'cmd',
  MessageTypeEnum.image: 'image',
  MessageTypeEnum.sound: 'sound',
  MessageTypeEnum.video: 'video',
  MessageTypeEnum.file: 'file',
  MessageTypeEnum.link: 'link',
  MessageTypeEnum.location: 'location',
  MessageTypeEnum.contacts: 'contacts',
  MessageTypeEnum.redenvelope: 'redenvelope',
  MessageTypeEnum.html: 'html',
  MessageTypeEnum.article: 'article',
  MessageTypeEnum.history: 'history',
  MessageTypeEnum.notice: 'notice',
};
