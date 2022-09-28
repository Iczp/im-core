import '../../enums/message_type_enum.dart';
import '../../entities/messages/message_dto.dart';
import '../message_contents/text_content/text_content_dto.dart';

/// 文本消息
class TextMessageDto extends MessageDto<TextContentDto> {
  TextMessageDto({
    super.id,
    required super.logId,
    required super.sender,
    required super.media,
    required super.receiver,
    required super.content,
    required super.sendTime,
    super.state,
    super.quoteMessage,
  }) : super(type: MessageTypeEnum.text);
}
