// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_content_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileContentDto _$FileContentDtoFromJson(Map<String, dynamic> json) =>
    FileContentDto(
      id: json['id'] as String?,
      path: json['path'] as String?,
      url: json['url'] as String?,
      fileName: json['fileName'] as String?,
      contentLength: json['contentLength'] as int? ?? 0,
      contentType: json['contentType'] as String?,
      actionUrl: json['actionUrl'] as String?,
      suffix: json['suffix'] as String?,
    );

Map<String, dynamic> _$FileContentDtoToJson(FileContentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'url': instance.url,
      'actionUrl': instance.actionUrl,
      'fileName': instance.fileName,
      'contentLength': instance.contentLength,
      'contentType': instance.contentType,
      'suffix': instance.suffix,
    };
