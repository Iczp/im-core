import '../../enums.dart';
import '../department.dart';
import '../media/meida_dto.dart';
import '../position.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_user_dto.g.dart';

/// <summary>
/// 用户
/// </summary>
///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()
class AppUserDto extends MediaDto {
  AppUserDto({
    required super.id,
    this.tenantId,
    required this.account,
    required super.name,
    this.portrait,
    this.nick,
    this.gender = Genders.boy,
    this.isPublic = false,
    this.isStatic = false,
    this.isActive = true,
    this.isExternal = true,
    this.job,
    this.tel,
    this.phone,
    this.roleIdList,
    this.positionList,
    this.departmentList,
  });

  @override
  MediaTypeEnum get meidaType => MediaTypeEnum.personal;

  /// 租户555

  final String? tenantId;

  /// Account

  final String account;

  /// Nick
  final String? nick;

  /// 性别
  final Genders gender;

  /// 是否公开
  final bool isPublic;

  /// 固定用户
  final bool isStatic;

  /// 是否激活
  final bool isActive;

  /// 是否外部的
  final bool isExternal;

  /// Job
  final String? job;

  /// Tel
  final String? tel;

  /// Phone
  final String? phone;

  ///
  final List<String>? roleIdList;

  /// 职位
  final List<PositionDto>? positionList;

  /// 部门
  final List<DepartmentDto>? departmentList;

  ///FromJson
  factory AppUserDto.fromJson(Map<String, dynamic> json) =>
      _$AppUserDtoFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$AppUserDtoToJson(this);
}
