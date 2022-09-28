// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_content_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoContentDto _$VideoContentDtoFromJson(Map<String, dynamic> json) =>
    VideoContentDto(
      id: json['id'] as String?,
      path: json['path'] as String?,
      url: json['url'] as String?,
      width: json['width'] as int? ?? 0,
      height: json['height'] as int? ?? 0,
      size: json['size'] as int? ?? 0,
      imagePath: json['imagePath'] as String?,
      imageUrl: json['imageUrl'] as String?,
      imageWidth: json['imageWidth'] as int? ?? 0,
      imageHeight: json['imageHeight'] as int? ?? 0,
      imageSize: json['imageSize'] as int? ?? 0,
      duration: json['duration'] as int? ?? 0,
      orientation: json['orientation'] as int? ?? 0,
    );

Map<String, dynamic> _$VideoContentDtoToJson(VideoContentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'orientation': instance.orientation,
      'imagePath': instance.imagePath,
      'imageUrl': instance.imageUrl,
      'imageWidth': instance.imageWidth,
      'imageHeight': instance.imageHeight,
      'imageSize': instance.imageSize,
      'duration': instance.duration,
    };
