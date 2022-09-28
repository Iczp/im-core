// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts_content_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactsContentDto _$ContactsContentDtoFromJson(Map<String, dynamic> json) =>
    ContactsContentDto(
      id: json['id'] as String?,
      mediaId: json['mediaId'] as String,
      mediaType: $enumDecode(_$MediaTypeEnumEnumMap, json['mediaType']),
      title: json['title'] as String?,
      picture: json['picture'] as String?,
      description: json['description'] as String?,
      remark: json['remark'] as String?,
    );

Map<String, dynamic> _$ContactsContentDtoToJson(ContactsContentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mediaId': instance.mediaId,
      'mediaType': _$MediaTypeEnumEnumMap[instance.mediaType]!,
      'title': instance.title,
      'picture': instance.picture,
      'description': instance.description,
      'remark': instance.remark,
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
