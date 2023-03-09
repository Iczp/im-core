// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_unit_get_list_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionUnitGetListInput _$SessionUnitGetListInputFromJson(
        Map<String, dynamic> json) =>
    SessionUnitGetListInput(
      ownerId: json['ownerId'] as String?,
      destinationId: json['destinationId'] as String?,
      destinationObjectType: $enumDecodeNullable(
          _$ChatObjectTypesEnumEnumMap, json['destinationObjectType']),
      isRemind: json['isRemind'] as bool? ?? false,
      isBadge: json['isBadge'] as bool? ?? false,
      minAutoId: json['minAutoId'] as int?,
      maxAutoId: json['maxAutoId'] as int?,
      maxResultCount: json['maxResultCount'] as int? ?? 10,
      skipCount: json['skipCount'] as int? ?? 0,
      sorting: json['sorting'] as String?,
      keyword: json['keyword'] as String?,
    );

Map<String, dynamic> _$SessionUnitGetListInputToJson(
        SessionUnitGetListInput instance) =>
    <String, dynamic>{
      'maxResultCount': instance.maxResultCount,
      'skipCount': instance.skipCount,
      'sorting': instance.sorting,
      'keyword': instance.keyword,
      'ownerId': instance.ownerId,
      'destinationId': instance.destinationId,
      'destinationObjectType':
          _$ChatObjectTypesEnumEnumMap[instance.destinationObjectType],
      'isRemind': instance.isRemind,
      'isBadge': instance.isBadge,
      'minAutoId': instance.minAutoId,
      'maxAutoId': instance.maxAutoId,
    };

const _$ChatObjectTypesEnumEnumMap = {
  ChatObjectTypesEnum.anonymous: 0,
  ChatObjectTypesEnum.personal: 1,
  ChatObjectTypesEnum.room: 2,
  ChatObjectTypesEnum.official: 3,
  ChatObjectTypesEnum.subscription: 4,
  ChatObjectTypesEnum.square: 5,
  ChatObjectTypesEnum.robot: 6,
  ChatObjectTypesEnum.shopKeeper: 7,
  ChatObjectTypesEnum.shopWaiter: 8,
  ChatObjectTypesEnum.customer: 9,
};
