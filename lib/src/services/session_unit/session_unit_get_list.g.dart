// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_unit_get_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionUnitGetList _$SessionUnitGetListFromJson(Map<String, dynamic> json) =>
    SessionUnitGetList(
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

Map<String, dynamic> _$SessionUnitGetListToJson(SessionUnitGetList instance) =>
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
  ChatObjectTypesEnum.personal: 'personal',
  ChatObjectTypesEnum.room: 'room',
  ChatObjectTypesEnum.official: 'official',
  ChatObjectTypesEnum.subscription: 'subscription',
  ChatObjectTypesEnum.square: 'square',
  ChatObjectTypesEnum.robot: 'robot',
  ChatObjectTypesEnum.shopKeeper: 'shopKeeper',
  ChatObjectTypesEnum.shopWaiter: 'shopWaiter',
  ChatObjectTypesEnum.customer: 'customer',
};
