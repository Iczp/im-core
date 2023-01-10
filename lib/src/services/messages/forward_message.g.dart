// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forward_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForwardMessage _$ForwardMessageFromJson(Map<String, dynamic> json) =>
    ForwardMessage(
      sourceMessageId: json['sourceMessageId'] as String,
      senderId: json['senderId'] as String,
      sessionUnitId: json['sessionUnitId'] as String,
      ignoreConnections: (json['ignoreConnections'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ForwardMessageToJson(ForwardMessage instance) =>
    <String, dynamic>{
      'sessionUnitId': instance.sessionUnitId,
      'senderId': instance.senderId,
      'sourceMessageId': instance.sourceMessageId,
      'ignoreConnections': instance.ignoreConnections,
    };
