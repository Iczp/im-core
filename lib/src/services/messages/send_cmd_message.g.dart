// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_cmd_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendCmdMessage _$SendCmdMessageFromJson(Map<String, dynamic> json) =>
    SendCmdMessage(
      senderId: json['senderId'] as int,
      receiverId: json['receiverId'] as int,
      keyName: json['keyName'] as String?,
      keyValue: json['keyValue'] as String?,
      quoteMessageId: json['quoteMessageId'] as int?,
      content: CmdContentDto.fromJson(json['content'] as Map<String, dynamic>),
      sessionUnitId: json['sessionUnitId'] as String,
      ignoreConnections: (json['ignoreConnections'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SendCmdMessageToJson(SendCmdMessage instance) =>
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
