// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionDto _$SessionDtoFromJson(Map<String, dynamic> json) => SessionDto(
      id: json['id'] as String,
      sessionKey: json['sessionKey'] as String,
      messageCount: json['messageCount'] as int?,
      tagCount: json['tagCount'] as int?,
      roleCount: json['roleCount'] as int?,
      owner: json['owner'] == null
          ? null
          : ChatObject.fromJson(json['owner'] as Map<String, dynamic>),
      title: json['title'] as String?,
      desciption: json['desciption'] as String?,
    );

Map<String, dynamic> _$SessionDtoToJson(SessionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sessionKey': instance.sessionKey,
      'owner': instance.owner,
      'messageCount': instance.messageCount,
      'tagCount': instance.tagCount,
      'roleCount': instance.roleCount,
      'title': instance.title,
      'desciption': instance.desciption,
    };
