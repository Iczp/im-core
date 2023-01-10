// 语音消息内容
import 'package:json_annotation/json_annotation.dart';

import '../../../../enums.dart';
import '../message_content.dart';

part 'sound_content_dto.g.dart';

/// 位置消息
@JsonSerializable()
class SoundContentDto extends MessageContent {
  SoundContentDto({
    super.id,
    this.text,
    this.time,
    this.path,
    this.url,
  }) : assert(url == null || path == null, 'url or path is null');

  /// 文本内容
  final String? text;

  ///文件网络地址
  final String? url;

  ///时长(毫秒)
  final int? time;

  ///本地地址
  final String? path;

  @override
  MessageTypeEnum get messageType => MessageTypeEnum.sound;

  ///FromJson
  factory SoundContentDto.fromJson(Map<String, dynamic> json) =>
      _$SoundContentDtoFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$SoundContentDtoToJson(this);

  @override
  mapToEntity(Map<String, dynamic> json) => _$SoundContentDtoFromJson(json);
}
