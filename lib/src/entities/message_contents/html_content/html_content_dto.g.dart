// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'html_content_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HtmlContentDto _$HtmlContentDtoFromJson(Map<String, dynamic> json) =>
    HtmlContentDto(
      editorType: $enumDecode(_$EditorTypeEnumEnumMap, json['editorType']),
      title: json['title'] as String,
      content: json['content'] as String,
      originalUrl: json['originalUrl'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$HtmlContentDtoToJson(HtmlContentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'editorType': _$EditorTypeEnumEnumMap[instance.editorType]!,
      'title': instance.title,
      'content': instance.content,
      'originalUrl': instance.originalUrl,
    };

const _$EditorTypeEnumEnumMap = {
  EditorTypeEnum.text: 'text',
  EditorTypeEnum.html: 'html',
  EditorTypeEnum.markdown: 'markdown',
};
