// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_text_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendTextMessage _$SendTextMessageFromJson(Map<String, dynamic> json) =>
    SendTextMessage(
      senderId: json['senderId'] as String,
      receiverId: json['receiverId'] as String,
      keyName: json['keyName'] as String?,
      keyValue: json['keyValue'] as String?,
      quoteMessageId: json['quoteMessageId'] as String?,
      content: TextContentDto.fromJson(json['content'] as Map<String, dynamic>),
      sessionUnitId: json['sessionUnitId'] as String,
      ignoreConnections: (json['ignoreConnections'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SendTextMessageToJson(SendTextMessage instance) =>
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
