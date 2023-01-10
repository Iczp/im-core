// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_html_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendHtmlMessage _$SendHtmlMessageFromJson(Map<String, dynamic> json) =>
    SendHtmlMessage(
      senderId: json['senderId'] as String,
      receiverId: json['receiverId'] as String,
      keyName: json['keyName'] as String?,
      keyValue: json['keyValue'] as String?,
      quoteMessageId: json['quoteMessageId'] as String?,
      content: HtmlContentDto.fromJson(json['content'] as Map<String, dynamic>),
      sessionUnitId: json['sessionUnitId'] as String,
      ignoreConnections: (json['ignoreConnections'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SendHtmlMessageToJson(SendHtmlMessage instance) =>
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
