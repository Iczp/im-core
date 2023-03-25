// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_object_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatObjectUpdate _$ChatObjectUpdateFromJson(Map<String, dynamic> json) =>
    ChatObjectUpdate(
      id: json['id'] as int,
      parentId: json['parentId'] as int?,
      name: json['name'] as String,
      code: json['code'] as String?,
      description: json['description'] as String?,
      sorting: json['sorting'] as int? ?? 0,
    );

Map<String, dynamic> _$ChatObjectUpdateToJson(ChatObjectUpdate instance) =>
    <String, dynamic>{
      'parentId': instance.parentId,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'sorting': instance.sorting,
    };
