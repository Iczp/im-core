// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'readed_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReadedDto _$ReadedDtoFromJson(Map<String, dynamic> json) => ReadedDto(
      mediaType: $enumDecode(_$MediaTypeEnumEnumMap, json['mediaType']),
      mediaId: json['mediaId'] as String,
      ownerUserId: json['ownerUserId'] as String?,
      autoId: (json['autoId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ReadedDtoToJson(ReadedDto instance) => <String, dynamic>{
      'mediaType': _$MediaTypeEnumEnumMap[instance.mediaType]!,
      'mediaId': instance.mediaId,
      'ownerUserId': instance.ownerUserId,
      'autoId': instance.autoId,
    };

const _$MediaTypeEnumEnumMap = {
  MediaTypeEnum.undefined: 'undefined',
  MediaTypeEnum.personal: 'personal',
  MediaTypeEnum.room: 'room',
  MediaTypeEnum.subscription: 'subscription',
  MediaTypeEnum.offical: 'offical',
  MediaTypeEnum.roomofdepartment: 'roomofdepartment',
  MediaTypeEnum.roomOfCourse: 'roomOfCourse',
  MediaTypeEnum.roomOfTask: 'roomOfTask',
  MediaTypeEnum.officalGroup: 'officalGroup',
  MediaTypeEnum.roomOfEngineeringProject: 'roomOfEngineeringProject',
  MediaTypeEnum.roomOfEngineeringStandard: 'roomOfEngineeringStandard',
};
