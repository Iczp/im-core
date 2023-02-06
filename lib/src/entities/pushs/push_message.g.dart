// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PushMessage _$PushMessageFromJson(Map<String, dynamic> json) => PushMessage(
      chatObjectId: json['chatObjectId'] as String,
      payload: json['payload'] as Object,
      command: json['command'] as String,
    );

Map<String, dynamic> _$PushMessageToJson(PushMessage instance) =>
    <String, dynamic>{
      'chatObjectId': instance.chatObjectId,
      'payload': instance.payload,
      'command': instance.command,
    };
