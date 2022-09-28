// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_content_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageContentDto _$ImageContentDtoFromJson(Map<String, dynamic> json) =>
    ImageContentDto(
      id: json['id'] as String?,
      text: json['text'] as String?,
      path: json['path'] as String?,
      url: json['url'] as String?,
      actionUrl: json['actionUrl'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      thumbnailActionUrl: json['thumbnailActionUrl'] as String?,
      qrientation: json['qrientation'] as String?,
      width: json['width'] as int,
      height: json['height'] as int,
      size: json['size'] as int,
      qrcode: json['qrcode'] as String?,
    );

Map<String, dynamic> _$ImageContentDtoToJson(ImageContentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'url': instance.url,
      'path': instance.path,
      'actionUrl': instance.actionUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'thumbnailActionUrl': instance.thumbnailActionUrl,
      'qrientation': instance.qrientation,
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'qrcode': instance.qrcode,
    };
