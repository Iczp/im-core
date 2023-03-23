import 'package:json_annotation/json_annotation.dart';

import '../entities/entity.dart';

part 'scope_unit.g.dart';

@JsonSerializable()
class ScopeUnit extends Entity {
  ScopeUnit({
    required this.chatObjectId,
    required this.sessionUnitId,
  });

  final int chatObjectId;

  final String sessionUnitId;

  ///FromJson
  factory ScopeUnit.fromJson(Map<String, dynamic> json) =>
      _$ScopeUnitFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ScopeUnitToJson(this);

  @override
  ScopeUnit mapToEntity(Map<String, dynamic> json) => _$ScopeUnitFromJson(json);
}
