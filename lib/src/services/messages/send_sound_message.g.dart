// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_sound_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendSoundMessage _$SendSoundMessageFromJson(Map<String, dynamic> json) =>
    SendSoundMessage(
      senderId: json['senderId'] as int,
      receiverId: json['receiverId'] as int,
      keyName: json['keyName'] as String?,
      keyValue: json['keyValue'] as String?,
      quoteMessageId: json['quoteMessageId'] as int?,
      content:
          SoundContentDto.fromJson(json['content'] as Map<String, dynamic>),
      sessionUnitId: json['sessionUnitId'] as String,
      ignoreConnections: (json['ignoreConnections'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SendSoundMessageToJson(SendSoundMessage instance) =>
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
