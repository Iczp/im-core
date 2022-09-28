// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offical_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfficalDto _$OfficalDtoFromJson(Map<String, dynamic> json) => OfficalDto(
      id: json['id'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$OfficalTypeEnumEnumMap, json['type']),
      account: json['account'] as String?,
      backgroundImage: json['backgroundImage'] as String?,
      description: json['description'] as String?,
      menusJson: json['menusJson'] as String?,
      inputMode: json['inputMode'] as int?,
      creationTime: json['creationTime'] == null
          ? null
          : DateTime.parse(json['creationTime'] as String),
      memberCount: json['memberCount'] as int?,
    );

Map<String, dynamic> _$OfficalDtoToJson(OfficalDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$OfficalTypeEnumEnumMap[instance.type]!,
      'account': instance.account,
      'backgroundImage': instance.backgroundImage,
      'description': instance.description,
      'menusJson': instance.menusJson,
      'inputMode': instance.inputMode,
      'creationTime': instance.creationTime?.toIso8601String(),
      'memberCount': instance.memberCount,
    };

const _$OfficalTypeEnumEnumMap = {
  OfficalTypeEnum.subscription: 'subscription',
  OfficalTypeEnum.service: 'service',
};
