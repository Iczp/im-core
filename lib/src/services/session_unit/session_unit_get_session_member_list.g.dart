// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_unit_get_session_member_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionUnitGetSessionMemberList _$SessionUnitGetSessionMemberListFromJson(
        Map<String, dynamic> json) =>
    SessionUnitGetSessionMemberList(
      id: json['id'] as String?,
      tagId: json['tagId'] as String?,
      roleId: json['roleId'] as String?,
      maxResultCount: json['maxResultCount'] as int? ?? 10,
      skipCount: json['skipCount'] as int? ?? 0,
      sorting: json['sorting'] as String?,
      keyword: json['keyword'] as String?,
    );

Map<String, dynamic> _$SessionUnitGetSessionMemberListToJson(
        SessionUnitGetSessionMemberList instance) =>
    <String, dynamic>{
      'maxResultCount': instance.maxResultCount,
      'skipCount': instance.skipCount,
      'sorting': instance.sorting,
      'keyword': instance.keyword,
      'id': instance.id,
      'tagId': instance.tagId,
      'roleId': instance.roleId,
    };
