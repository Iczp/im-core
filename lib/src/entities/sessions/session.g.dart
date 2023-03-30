// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Session _$SessionFromJson(Map<String, dynamic> json) => Session(
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

Map<String, dynamic> _$SessionToJson(Session instance) => <String, dynamic>{
      'id': instance.id,
      'sessionKey': instance.sessionKey,
      'owner': instance.owner,
      'messageCount': instance.messageCount,
      'tagCount': instance.tagCount,
      'roleCount': instance.roleCount,
      'title': instance.title,
      'desciption': instance.desciption,
    };
