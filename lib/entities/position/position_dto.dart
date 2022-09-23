import 'package:json_annotation/json_annotation.dart';

part 'position_dto.g.dart';

/// <summary>
/// 职位
/// </summary>
@JsonSerializable()
class PositionDto {
  const PositionDto({
    required this.name,
    required this.isStatic,
    required this.sorting,
  });

  /// Name

  final String name;

  /// 是否固定职位

  final bool isStatic;

  /// 排序（越大越前面） DESC

  final int sorting;

  ///FromJson
  factory PositionDto.fromJson(Map<String, dynamic> json) =>
      _$PositionDtoFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$PositionDtoToJson(this);
}
