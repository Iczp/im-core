import 'package:im_core/enums.dart';
import 'package:json_annotation/json_annotation.dart';

import '../message_content.dart';

part 'html_content_dto.g.dart';

///文本消息内容
@JsonSerializable()
class HtmlContentDto extends MessageContent {
  ///
  HtmlContentDto({
    required this.editorType,
    required this.title,
    required this.content,
    this.originalUrl,
    super.id,
  });

  final EditorTypeEnum editorType;

  final String title;

  final String content;

  final String? originalUrl;

  ///
  @override
  MessageTypeEnum get messageType => MessageTypeEnum.html;

  ///FromJson
  factory HtmlContentDto.fromJson(Map<String, dynamic> json) =>
      _$HtmlContentDtoFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$HtmlContentDtoToJson(this);

  @override
  mapToEntity(Map<String, dynamic> json) => _$HtmlContentDtoFromJson(json);
}
