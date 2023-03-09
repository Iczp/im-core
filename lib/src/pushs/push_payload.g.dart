// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PushPayload _$PushPayloadFromJson(Map<String, dynamic> json) => PushPayload(
      appUserId: json['appUserId'] as String,
      scopes: (json['scopes'] as List<dynamic>)
          .map((e) => ScopeUnit.fromJson(e as Map<String, dynamic>))
          .toList(),
      command: json['command'] as String,
      payload: json['payload'] as Object,
    );

Map<String, dynamic> _$PushPayloadToJson(PushPayload instance) =>
    <String, dynamic>{
      'appUserId': instance.appUserId,
      'scopes': instance.scopes,
      'command': instance.command,
      'payload': instance.payload,
    };
