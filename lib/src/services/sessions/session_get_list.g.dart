// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_get_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionGetList _$SessionGetListFromJson(Map<String, dynamic> json) =>
    SessionGetList(
      ownerId: json['ownerId'] as int?,
      maxResultCount: json['maxResultCount'] as int? ?? 10,
      skipCount: json['skipCount'] as int? ?? 0,
      sorting: json['sorting'] as String?,
      keyword: json['keyword'] as String?,
    );

Map<String, dynamic> _$SessionGetListToJson(SessionGetList instance) =>
    <String, dynamic>{
      'maxResultCount': instance.maxResultCount,
      'skipCount': instance.skipCount,
      'sorting': instance.sorting,
      'keyword': instance.keyword,
      'ownerId': instance.ownerId,
    };
