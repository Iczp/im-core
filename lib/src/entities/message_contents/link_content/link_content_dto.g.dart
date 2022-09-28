// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_content_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LinkContentDto _$LinkContentDtoFromJson(Map<String, dynamic> json) =>
    LinkContentDto(
      id: json['id'] as String?,
      url: json['url'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      image: json['image'] as String?,
      issuerName: json['issuerName'] as String?,
      issuerIcon: json['issuerIcon'] as String?,
    );

Map<String, dynamic> _$LinkContentDtoToJson(LinkContentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'issuerName': instance.issuerName,
      'issuerIcon': instance.issuerIcon,
    };
