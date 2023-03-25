// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_object_create_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatObjectCreateRoom _$ChatObjectCreateRoomFromJson(
        Map<String, dynamic> json) =>
    ChatObjectCreateRoom(
      name: json['name'] as String,
      code: json['code'] as String?,
      description: json['description'] as String?,
      ownerId: json['ownerId'] as int?,
      chatObjectIdList: (json['chatObjectIdList'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const <int>[],
    );

Map<String, dynamic> _$ChatObjectCreateRoomToJson(
        ChatObjectCreateRoom instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'ownerId': instance.ownerId,
      'description': instance.description,
      'chatObjectIdList': instance.chatObjectIdList,
    };
