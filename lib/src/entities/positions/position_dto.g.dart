// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PositionDto _$PositionDtoFromJson(Map<String, dynamic> json) => PositionDto(
      name: json['name'] as String,
      isStatic: json['isStatic'] as bool,
      sorting: json['sorting'] as int,
    );

Map<String, dynamic> _$PositionDtoToJson(PositionDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'isStatic': instance.isStatic,
      'sorting': instance.sorting,
    };
