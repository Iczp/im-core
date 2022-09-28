// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_setting_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaSettingDto _$MediaSettingDtoFromJson(Map<String, dynamic> json) =>
    MediaSettingDto(
      mediaType: $enumDecode(_$MediaTypeEnumEnumMap, json['mediaType']),
      mediaId: json['mediaId'] as String,
      rename: json['rename'] as String?,
      isCantacts: json['isCantacts'] as bool?,
      remarks: json['remarks'] as String?,
      sortingNumber: json['sortingNumber'] as int?,
      isImmersed: json['isImmersed'] as bool?,
      isShowMemberName: json['isShowMemberName'] as bool?,
      isShowRead: json['isShowRead'] as bool?,
      backgroundImage: json['backgroundImage'] as String?,
    );

Map<String, dynamic> _$MediaSettingDtoToJson(MediaSettingDto instance) =>
    <String, dynamic>{
      'mediaType': _$MediaTypeEnumEnumMap[instance.mediaType]!,
      'mediaId': instance.mediaId,
      'rename': instance.rename,
      'isCantacts': instance.isCantacts,
      'remarks': instance.remarks,
      'sortingNumber': instance.sortingNumber,
      'isImmersed': instance.isImmersed,
      'isShowMemberName': instance.isShowMemberName,
      'isShowRead': instance.isShowRead,
      'backgroundImage': instance.backgroundImage,
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
