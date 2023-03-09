// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_history_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendHistoryMessage _$SendHistoryMessageFromJson(Map<String, dynamic> json) =>
    SendHistoryMessage(
      senderId: json['senderId'] as int,
      receiverId: json['receiverId'] as int,
      keyName: json['keyName'] as String?,
      keyValue: json['keyValue'] as String?,
      quoteMessageId: json['quoteMessageId'] as int?,
      content:
          HistoryContentInput.fromJson(json['content'] as Map<String, dynamic>),
      sessionUnitId: json['sessionUnitId'] as String,
      ignoreConnections: (json['ignoreConnections'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SendHistoryMessageToJson(SendHistoryMessage instance) =>
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
