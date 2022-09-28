// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaDto _$MediaDtoFromJson(Map<String, dynamic> json) => MediaDto(
      id: json['id'] as String,
      name: json['name'] as String,
      portrait: json['portrait'] as String?,
    );

Map<String, dynamic> _$MediaDtoToJson(MediaDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'portrait': instance.portrait,
    };
