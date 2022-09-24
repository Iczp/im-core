import 'package:json_annotation/json_annotation.dart';

part 'department_dto.g.dart';

///部门
@JsonSerializable()
class DepartmentDto {
  const DepartmentDto({
    required this.id,
    required this.parentId,
    required this.name,
    required this.depth,
    required this.fullPath,
    required this.fullPathName,
    required this.sorting,
    this.description,
  });

  /// Id

  final String id;

  /// ParentId

  final String? parentId;

  /// Name

  final String name;

  /// 层级

  final int depth;

  /// 路径

  final String fullPath;

  /// 路径名称

  final String fullPathName;

  /// 排序（越大越前面） DESC

  final int sorting;

  /// 说明

  final String? description;

  ///FromJson
  factory DepartmentDto.fromJson(Map<String, dynamic> json) =>
      _$DepartmentDtoFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$DepartmentDtoToJson(this);
}
