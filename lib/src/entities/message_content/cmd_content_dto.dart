import 'package:im_core/src/enums/message_type_enum.dart';
import 'package:im_core/src/entities/message_content/message_content.dart';

///文本消息内容
class CmdContentDto extends MessageContent {
  ///
  CmdContentDto({
    super.id,
    required this.cmd,
    required this.text,
    this.url,
  });
  // 执行的命令
  final String cmd;
  // 文本内容
  final String text;
  // 文本内容
  final String? url;

  ///
  @override
  MessageTypeEnum get messageType => MessageTypeEnum.text;

  ///
  factory CmdContentDto.fromJson(Map<String, dynamic> json) => CmdContentDto(
        id: json['id'],
        cmd: json['cmd'],
        text: json['text'],
        url: json['url'],
      );

  ///
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'cmd': cmd,
        'text': text,
        'url': url,
      };
}
