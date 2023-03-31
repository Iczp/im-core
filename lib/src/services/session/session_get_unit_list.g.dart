// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_get_unit_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionGetUnitList _$SessionGetUnitListFromJson(Map<String, dynamic> json) =>
    SessionGetUnitList(
      ownerIdList: (json['ownerIdList'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      sessionId: json['sessionId'] as String?,
      tagId: json['tagId'] as String?,
      roleId: json['roleId'] as String?,
      joinWay: $enumDecodeNullable(_$JoinWaysEnumEnumMap, json['joinWay']),
      inviterId: json['inviterId'] as int?,
      maxResultCount: json['maxResultCount'] as int? ?? 10,
      skipCount: json['skipCount'] as int? ?? 0,
      sorting: json['sorting'] as String?,
      keyword: json['keyword'] as String?,
    );

Map<String, dynamic> _$SessionGetUnitListToJson(SessionGetUnitList instance) =>
    <String, dynamic>{
      'maxResultCount': instance.maxResultCount,
      'skipCount': instance.skipCount,
      'sorting': instance.sorting,
      'keyword': instance.keyword,
      'ownerIdList': instance.ownerIdList,
      'sessionId': instance.sessionId,
      'tagId': instance.tagId,
      'roleId': instance.roleId,
      'joinWay': _$JoinWaysEnumEnumMap[instance.joinWay],
      'inviterId': instance.inviterId,
    };

const _$JoinWaysEnumEnumMap = {
  JoinWaysEnum.normal: 0,
  JoinWaysEnum.invitation: 1,
  JoinWaysEnum.creator: 2,
  JoinWaysEnum.scan: 3,
  JoinWaysEnum.system: 4,
  JoinWaysEnum.autoJoin: 5,
};
