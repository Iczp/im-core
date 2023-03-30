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
      owner: json['owner'] == null
          ? null
          : ChatObject.fromJson(json['owner'] as Map<String, dynamic>),
      roleList: (json['roleList'] as List<dynamic>?)
          ?.map((e) => SessionUnitRole.fromJson(e as Map<String, dynamic>))
          .toList(),
      tagList: (json['tagList'] as List<dynamic>?)
          ?.map((e) => SessionUnitTag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SessionUnitOwnerToJson(SessionUnitOwner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sessionId': instance.sessionId,
      'ownerId': instance.ownerId,
      'owner': instance.owner,
      'tagList': instance.tagList,
      'roleList': instance.roleList,
    };
