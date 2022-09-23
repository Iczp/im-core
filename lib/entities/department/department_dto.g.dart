// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepartmentDto _$DepartmentDtoFromJson(Map<String, dynamic> json) =>
    DepartmentDto(
      id: json['id'] as String,
      parentId: json['parentId'] as String?,
      name: json['name'] as String,
      depth: json['depth'] as int,
      fullPath: json['fullPath'] as String,
      fullPathName: json['fullPathName'] as String,
      sorting: json['sorting'] as int,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$DepartmentDtoToJson(DepartmentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'name': instance.name,
      'depth': instance.depth,
      'fullPath': instance.fullPath,
      'fullPathName': instance.fullPathName,
      'sorting': instance.sorting,
      'description': instance.description,
    };
