// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PushMessage _$PushMessageFromJson(Map<String, dynamic> json) => PushMessage(
      appUserId: json['appUserId'] as String,
      chatObjectId: json['chatObjectId'] as String,
      sessionUnitId: json['sessionUnitId'] as String,
      command: json['command'] as String,
      payload: json['payload'] as Object,
    );

Map<String, dynamic> _$PushMessageToJson(PushMessage instance) =>
    <String, dynamic>{
      'appUserId': instance.appUserId,
      'chatObjectId': instance.chatObjectId,
      'sessionUnitId': instance.sessionUnitId,
      'command': instance.command,
      'payload': instance.payload,
    };
