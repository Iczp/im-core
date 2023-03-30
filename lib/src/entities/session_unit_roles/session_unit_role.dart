import 'package:im_core/im_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'session_unit_role.g.dart';

/// <summary>
/// 用户
/// </summary>
///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()
class SessionUnitRole extends Entity {
  ///
  SessionUnitRole({
    required this.id,
    required this.name,
  });

  final String id;

  final String name;

  ///FromJson
  factory SessionUnitRole.fromJson(Map<String, dynamic> json) =>
      _$SessionUnitRoleFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SessionUnitRoleToJson(this);
}
