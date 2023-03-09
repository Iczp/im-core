// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_link_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendLinkMessage _$SendLinkMessageFromJson(Map<String, dynamic> json) =>
    SendLinkMessage(
      senderId: json['senderId'] as int,
      receiverId: json['receiverId'] as int,
      keyName: json['keyName'] as String?,
      keyValue: json['keyValue'] as String?,
      quoteMessageId: json['quoteMessageId'] as int?,
      content: LinkContentDto.fromJson(json['content'] as Map<String, dynamic>),
      sessionUnitId: json['sessionUnitId'] as String,
      ignoreConnections: (json['ignoreConnections'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SendLinkMessageToJson(SendLinkMessage instance) =>
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
