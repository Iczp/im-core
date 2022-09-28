// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_content_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationContentDto _$LocationContentDtoFromJson(Map<String, dynamic> json) =>
    LocationContentDto(
      id: json['id'] as String?,
      provider: json['provider'] as String?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      image: json['image'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$LocationContentDtoToJson(LocationContentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'provider': instance.provider,
      'name': instance.name,
      'address': instance.address,
      'image': instance.image,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
