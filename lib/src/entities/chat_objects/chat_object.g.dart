// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatObject _$ChatObjectFromJson(Map<String, dynamic> json) => ChatObject(
      id: json['id'] as String,
      name: json['name'] as String,
      portrait: json['portrait'] as String?,
      code: json['code'] as String?,
      chatObjectType: $enumDecodeNullable(
          _$ChatObjectTypesEnumEnumMap, json['chatObjectType']),
    );

Map<String, dynamic> _$ChatObjectToJson(ChatObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'portrait': instance.portrait,
      'code': instance.code,
      'chatObjectType': _$ChatObjectTypesEnumEnumMap[instance.chatObjectType],
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
