// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatObject _$ChatObjectFromJson(Map<String, dynamic> json) => ChatObject(
      id: json['id'] as int,
      name: json['name'] as String?,
      portrait: json['portrait'] as String?,
      code: json['code'] as String?,
      objectType:
          $enumDecodeNullable(_$ChatObjectTypesEnumEnumMap, json['objectType']),
    );

Map<String, dynamic> _$ChatObjectToJson(ChatObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'portrait': instance.portrait,
      'code': instance.code,
      'objectType': _$ChatObjectTypesEnumEnumMap[instance.objectType],
    };

const _$ChatObjectTypesEnumEnumMap = {
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
