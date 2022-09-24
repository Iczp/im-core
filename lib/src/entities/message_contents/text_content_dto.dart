import 'package:im_core/src/enums/message_type_enum.dart';
import 'package:im_core/src/entities/message_contents/message_content.dart';

///文本消息内容
class TextContentDto extends MessageContent {
  ///
  TextContentDto({
    super.id,
    required this.text,
  });

  /// 文本内容
  final String text;

  ///
  @override
  MessageTypeEnum get messageType => MessageTypeEnum.text;

  ///
  factory TextContentDto.fromJson(Map<String, dynamic> json) => TextContentDto(
        id: json['id'],
        text: json['text'],
      );

  ///
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'text': text,
      };
}
