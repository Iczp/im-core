// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_object_get_list_by_current_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatObjectGetListByCurrentUser _$ChatObjectGetListByCurrentUserFromJson(
        Map<String, dynamic> json) =>
    ChatObjectGetListByCurrentUser(
      maxResultCount: json['maxResultCount'] as int? ?? 10,
      skipCount: json['skipCount'] as int? ?? 0,
      sorting: json['sorting'] as String?,
      keyword: json['keyword'] as String?,
    );

Map<String, dynamic> _$ChatObjectGetListByCurrentUserToJson(
        ChatObjectGetListByCurrentUser instance) =>
    <String, dynamic>{
      'maxResultCount': instance.maxResultCount,
      'skipCount': instance.skipCount,
      'sorting': instance.sorting,
      'keyword': instance.keyword,
    };
