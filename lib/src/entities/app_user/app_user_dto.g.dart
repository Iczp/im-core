// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUserDto _$AppUserDtoFromJson(Map<String, dynamic> json) => AppUserDto(
      id: json['id'] as String,
      name: json['name'] as String,
      account: json['account'] as String,
      portrait: json['portrait'] as String?,
      nick: json['nick'] as String?,
      gender:
          $enumDecodeNullable(_$GendersEnumMap, json['gender']) ?? Genders.boy,
      isPublic: json['isPublic'] as bool? ?? false,
      isStatic: json['isStatic'] as bool? ?? false,
      isActive: json['isActive'] as bool? ?? true,
      isExternal: json['isExternal'] as bool? ?? true,
      job: json['job'] as String?,
      tel: json['tel'] as String?,
      phone: json['phone'] as String?,
      roleIdList: (json['roleIdList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      positionList: (json['positionList'] as List<dynamic>?)
          ?.map((e) => PositionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      departmentList: (json['departmentList'] as List<dynamic>?)
          ?.map((e) => DepartmentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      tenantId: json['tenantId'] as String?,
    );

Map<String, dynamic> _$AppUserDtoToJson(AppUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'portrait': instance.portrait,
      'tenantId': instance.tenantId,
      'account': instance.account,
      'nick': instance.nick,
      'gender': _$GendersEnumMap[instance.gender]!,
      'isPublic': instance.isPublic,
      'isStatic': instance.isStatic,
      'isActive': instance.isActive,
      'isExternal': instance.isExternal,
      'job': instance.job,
      'tel': instance.tel,
      'phone': instance.phone,
      'roleIdList': instance.roleIdList,
      'positionList': instance.positionList,
      'departmentList': instance.departmentList,
    };

const _$GendersEnumMap = {
  Genders.undefined: 'undefined',
  Genders.girl: 'girl',
  Genders.boy: 'boy',
};
