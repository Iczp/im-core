// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_location_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendLocationMessage _$SendLocationMessageFromJson(Map<String, dynamic> json) =>
    SendLocationMessage(
      senderId: json['senderId'] as String,
      receiverId: json['receiverId'] as String,
      keyName: json['keyName'] as String?,
      keyValue: json['keyValue'] as String?,
      quoteMessageId: json['quoteMessageId'] as String?,
      content:
          VideoContentDto.fromJson(json['content'] as Map<String, dynamic>),
      sessionUnitId: json['sessionUnitId'] as String,
      ignoreConnections: (json['ignoreConnections'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SendLocationMessageToJson(
        SendLocationMessage instance) =>
    <String, dynamic>{
      'sessionUnitId': instance.sessionUnitId,
      'ignoreConnections': instance.ignoreConnections,
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'keyName': instance.keyName,
      'keyValue': instance.keyValue,
      'quoteMessageId': instance.quoteMessageId,
      'content': instance.content,
    };
