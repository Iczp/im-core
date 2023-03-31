// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_unit_owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionUnitOwner _$SessionUnitOwnerFromJson(Map<String, dynamic> json) =>
    SessionUnitOwner(
      id: json['id'] as String,
      sessionId: json['sessionId'] as String,
      ownerId: json['ownerId'] as String,
      rename: json['rename'] as String?,
      owner: json['owner'] == null
          ? null
          : ChatObject.fromJson(json['owner'] as Map<String, dynamic>),
      joinWay: $enumDecodeNullable(_$JoinWaysEnumEnumMap, json['joinWay']),
      inviterId: json['inviterId'] as int?,
      roleList: (json['roleList'] as List<dynamic>?)
          ?.map((e) => SessionUnitRole.fromJson(e as Map<String, dynamic>))
          .toList(),
      tagList: (json['tagList'] as List<dynamic>?)
          ?.map((e) => SessionUnitTag.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..isKilled = json['isKilled'] as bool;

Map<String, dynamic> _$SessionUnitOwnerToJson(SessionUnitOwner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rename': instance.rename,
      'sessionId': instance.sessionId,
      'ownerId': instance.ownerId,
      'owner': instance.owner,
      'joinWay': _$JoinWaysEnumEnumMap[instance.joinWay],
      'inviterId': instance.inviterId,
      'isKilled': instance.isKilled,
      'tagList': instance.tagList,
      'roleList': instance.roleList,
    };

const _$JoinWaysEnumEnumMap = {
  JoinWaysEnum.normal: 0,
  JoinWaysEnum.invitation: 1,
  JoinWaysEnum.creator: 2,
  JoinWaysEnum.scan: 3,
  JoinWaysEnum.system: 4,
  JoinWaysEnum.autoJoin: 5,
};
