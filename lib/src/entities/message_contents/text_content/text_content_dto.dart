import 'package:json_annotation/json_annotation.dart';

import '../../../enums/message_type_enum.dart';
import '../message_content.dart';

part 'text_content_dto.g.dart';

///文本消息内容
@JsonSerializable()
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

  ///FromJson
  factory TextContentDto.fromJson(Map<String, dynamic> json) =>
      _$TextContentDtoFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$TextContentDtoToJson(this);

  @override
  mapToEntity(Map<String, dynamic> json) => _$TextContentDtoFromJson(json);

  // ///
  // factory TextContentDto.fromJson(Map<String, dynamic> json) => TextContentDto(
  //       id: json['id'],
  //       text: json['text'],
  //     );

  // ///
  // Map<String, dynamic> toJson() => <String, dynamic>{
  //       'id': id,
  //       'text': text,
  //     };
}
