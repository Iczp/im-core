import 'package:json_annotation/json_annotation.dart';

part 'session_unit_tag.g.dart';

/// <summary>
/// 用户
/// </summary>
///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()
class SessionUnitTag {
  ///
  SessionUnitTag({
    required this.id,
    required this.name,
  });

  final String id;

  final String name;

  ///FromJson
  factory SessionUnitTag.fromJson(Map<String, dynamic> json) =>
      _$SessionUnitTagFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$SessionUnitTagToJson(this);
}
