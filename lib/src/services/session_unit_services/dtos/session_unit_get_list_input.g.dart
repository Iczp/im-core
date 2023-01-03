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
      destinationObjectType: json['destinationObjectType'] as bool?,
      isRemind: json['isRemind'] as bool?,
      isBadge: json['isBadge'] as bool?,
      minAutoId: json['minAutoId'] as int?,
      maxAutoId: json['maxAutoId'] as int?,
    )
      ..maxResultCount = json['maxResultCount'] as int
      ..skipCount = json['skipCount'] as int?
      ..sorting = json['sorting'] as String?
      ..keyword = json['keyword'] as String?;

Map<String, dynamic> _$SessionUnitGetListInputToJson(
        SessionUnitGetListInput instance) =>
    <String, dynamic>{
      'maxResultCount': instance.maxResultCount,
      'skipCount': instance.skipCount,
      'sorting': instance.sorting,
      'keyword': instance.keyword,
      'ownerId': instance.ownerId,
      'destinationId': instance.destinationId,
      'destinationObjectType': instance.destinationObjectType,
      'isRemind': instance.isRemind,
      'isBadge': instance.isBadge,
      'minAutoId': instance.minAutoId,
      'maxAutoId': instance.maxAutoId,
    };
