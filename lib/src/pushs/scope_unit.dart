import 'package:json_annotation/json_annotation.dart';

part 'scope_unit.g.dart';

@JsonSerializable()
class ScopeUnit {
  const ScopeUnit({
    required this.chatObjectId,
    required this.sessionUnitId,
  });

  final int chatObjectId;

  final String sessionUnitId;

  ///FromJson
  factory ScopeUnit.fromJson(Map<String, dynamic> json) =>
      _$ScopeUnitFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$ScopeUnitToJson(this);

  ScopeUnit mapToEntity(Map<String, dynamic> json) => _$ScopeUnitFromJson(json);
}
