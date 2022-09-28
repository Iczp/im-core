import '../../enums/message_type_enum.dart';
import '../../entities/messages/message_dto.dart';
import '../message_contents/sound_content/sound_content_dto.dart';

/// 语消息
class SoundMessageDto extends MessageDto<SoundContentDto> {
  SoundMessageDto({
    super.id,
    required super.logId,
    required super.sender,
    required super.media,
    required super.receiver,
    required super.content,
    required super.sendTime,
    super.state,
  }) : super(type: MessageTypeEnum.sound);
}
