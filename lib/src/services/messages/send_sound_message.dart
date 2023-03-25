import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

import 'send_message.dart';

part 'send_sound_message.g.dart';

@JsonSerializable()
class SendSoundMessage extends SendMessage<SoundContentDto> {
  ///
  @override
  String get apiUrl => '/api/app/message/send-sound-message';

  ///FromJson
  factory SendSoundMessage.fromJson(Map<String, dynamic> json) =>
      _$SendSoundMessageFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SendSoundMessageToJson(this);

  ///
  SendSoundMessage({
    required super.senderId,
    required super.receiverId,
    super.keyName,
    super.keyValue,
    super.quoteMessageId,
    required super.content,
    required super.sessionUnitId,
    super.ignoreConnections,
  });
}
