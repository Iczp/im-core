import 'package:im_core/im_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'session_unit_owner.g.dart';

///
@JsonSerializable()
class SessionUnitOwner extends Entity {
  ///
  SessionUnitOwner({
    required this.id,
    required this.sessionId,
    required this.ownerId,
    this.owner,
    this.roleList,
    this.tagList,
  });

  final String id;

  final String sessionId;

  final String ownerId;

  final ChatObject? owner;

  final List<SessionUnitTag>? tagList;

  final List<SessionUnitRole>? roleList;

  ///FromJson
  factory SessionUnitOwner.fromJson(Map<String, dynamic> json) =>
      _$SessionUnitOwnerFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SessionUnitOwnerToJson(this);
}
