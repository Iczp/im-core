// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_object_get_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatObjectGetList _$ChatObjectGetListFromJson(Map<String, dynamic> json) =>
    ChatObjectGetList(
      objectType:
          $enumDecodeNullable(_$ChatObjectTypesEnumEnumMap, json['objectType']),
      parentId: json['parentId'] as int?,
      isEnabledParentId: json['isEnabledParentId'] as bool?,
      isImportChildCategory: json['isImportChildCategory'] as bool?,
      categoryIdList: (json['categoryIdList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      maxResultCount: json['maxResultCount'] as int? ?? 10,
      skipCount: json['skipCount'] as int? ?? 0,
      sorting: json['sorting'] as String?,
      keyword: json['keyword'] as String?,
    );

Map<String, dynamic> _$ChatObjectGetListToJson(ChatObjectGetList instance) =>
    <String, dynamic>{
      'maxResultCount': instance.maxResultCount,
      'skipCount': instance.skipCount,
      'sorting': instance.sorting,
      'keyword': instance.keyword,
      'objectType': _$ChatObjectTypesEnumEnumMap[instance.objectType],
      'parentId': instance.parentId,
      'isEnabledParentId': instance.isEnabledParentId,
      'isImportChildCategory': instance.isImportChildCategory,
      'categoryIdList': instance.categoryIdList,
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
