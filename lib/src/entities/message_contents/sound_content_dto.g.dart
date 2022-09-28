// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sound_content_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SoundContentDto _$SoundContentDtoFromJson(Map<String, dynamic> json) =>
    SoundContentDto(
      id: json['id'] as String?,
      text: json['text'] as String?,
      time: json['time'] as int?,
      path: json['path'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$SoundContentDtoToJson(SoundContentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'url': instance.url,
      'time': instance.time,
      'path': instance.path,
    };
