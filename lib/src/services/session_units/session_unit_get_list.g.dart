// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_unit_get_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionUnitGetList _$SessionUnitGetListFromJson(Map<String, dynamic> json) =>
    SessionUnitGetList(
      ownerId: json['ownerId'] as int?,
      destinationId: json['destinationId'] as int?,
      destinationObjectType: $enumDecodeNullable(
          _$ChatObjectTypesEnumEnumMap, json['destinationObjectType']),
      isTopping: json['isTopping'] as bool?,
      isRemind: json['isRemind'] as bool?,
      isBadge: json['isBadge'] as bool?,
      minMessageId: json['minAutoId'] as int?,
      maxMessageId: json['maxAutoId'] as int?,
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
      'isTopping': instance.isTopping,
      'isRemind': instance.isRemind,
      'isBadge': instance.isBadge,
      'minAutoId': instance.minMessageId,
      'maxAutoId': instance.maxMessageId,
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
