// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Session _$SessionFromJson(Map<String, dynamic> json) => Session(
      id: json['id'] as String,
      sessionKey: json['sessionKey'] as String,
      title: json['title'] as String?,
      desciption: json['desciption'] as String?,
    );

Map<String, dynamic> _$SessionToJson(Session instance) => <String, dynamic>{
      'id': instance.id,
      'sessionKey': instance.sessionKey,
      'title': instance.title,
      'desciption': instance.desciption,
    };
