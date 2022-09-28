// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomDetailDto _$RoomDetailDtoFromJson(Map<String, dynamic> json) =>
    RoomDetailDto(
      id: json['id'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$RoomTypeEnumEnumMap, json['type']),
      code: json['code'] as String?,
      fullName: json['fullName'] as String?,
      originalName: json['originalName'] as String?,
      backgroundImage: json['backgroundImage'] as String?,
      description: json['description'] as String?,
      managerUserIdList: json['managerUserIdList'] as String?,
      creatorUserId: json['creatorUserId'] as String?,
      creationTime: json['creationTime'] == null
          ? null
          : DateTime.parse(json['creationTime'] as String),
      memberCount: json['memberCount'] as int?,
    );

Map<String, dynamic> _$RoomDetailDtoToJson(RoomDetailDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$RoomTypeEnumEnumMap[instance.type]!,
      'code': instance.code,
      'fullName': instance.fullName,
      'originalName': instance.originalName,
      'backgroundImage': instance.backgroundImage,
      'description': instance.description,
      'managerUserIdList': instance.managerUserIdList,
      'creatorUserId': instance.creatorUserId,
      'creationTime': instance.creationTime?.toIso8601String(),
      'memberCount': instance.memberCount,
    };

const _$RoomTypeEnumEnumMap = {
  RoomTypeEnum.normal: 'normal',
  RoomTypeEnum.condition: 'condition',
  RoomTypeEnum.tasks: 'tasks',
  RoomTypeEnum.course: 'course',
};
