// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_get_role_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionGetRoleList _$SessionGetRoleListFromJson(Map<String, dynamic> json) =>
    SessionGetRoleList(
      sessionId: json['sessionId'] as String,
      maxResultCount: json['maxResultCount'] as int? ?? 10,
      skipCount: json['skipCount'] as int? ?? 0,
      sorting: json['sorting'] as String?,
      keyword: json['keyword'] as String?,
    );

Map<String, dynamic> _$SessionGetRoleListToJson(SessionGetRoleList instance) =>
    <String, dynamic>{
      'maxResultCount': instance.maxResultCount,
      'skipCount': instance.skipCount,
      'sorting': instance.sorting,
      'keyword': instance.keyword,
      'sessionId': instance.sessionId,
    };
