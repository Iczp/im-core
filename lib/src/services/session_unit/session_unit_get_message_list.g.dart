// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_unit_get_message_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionUnitGetMessageList _$SessionUnitGetMessageListFromJson(
        Map<String, dynamic> json) =>
    SessionUnitGetMessageList(
      id: json['id'] as String,
      senderId: json['senderId'] as String?,
      messageType:
          $enumDecodeNullable(_$MessageTypeEnumEnumMap, json['messageType']),
      isRemind: json['isRemind'] as bool?,
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
