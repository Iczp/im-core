// 语音消息内容
import 'package:im_core/src/enums.dart';
import 'package:im_core/src/entities/message_content/message_content.dart';

class SoundContentDto extends MessageContent {
  SoundContentDto({
    super.id,
    this.text,
    this.time,
    this.path,
    this.url,
  }) : assert(url == null || path == null, 'url or path is null');

  // 文本内容
  final String? text;

  ///文件网络地址
  final String? url;

  ///时长(毫秒)
  final int? time;

  ///本地地址
  final String? path;

  @override
  MessageTypeEnum get messageType => MessageTypeEnum.sound;

  ///
  factory SoundContentDto.fromJson(Map<String, dynamic> json) =>
      SoundContentDto(
        id: json['id'],
        text: json['text'],
        url: json['url'],
        time: json['time'],
        path: json['path'],
      );

  ///
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'text': text,
        'url': url,
        'time': time,
        'path': path,
      };
}
