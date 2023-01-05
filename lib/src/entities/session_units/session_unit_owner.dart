import 'package:json_annotation/json_annotation.dart';

import '../chat_objects/chat_object.dart';
import '../session_unit_roles/session_unit_role.dart';
import '../session_unit_tags/session_unit_tag.dart';

part 'session_unit_owner.g.dart';

///
@JsonSerializable()
class SessionUnitOwner {
  ///
  SessionUnitOwner({
    required this.id,
    required this.sessionId,
    // required this.ownerId,
    this.owner,
    this.roleList,
    this.tagList,
  });

  ///
  final String id;

  ///
  final String sessionId;

  // final String ownerId;

  ///
  final ChatObject? owner;

  ///
  final List<SessionUnitTag>? tagList;

  ///
  final List<SessionUnitRole>? roleList;

  ///FromJson
  factory SessionUnitOwner.fromJson(Map<String, dynamic> json) =>
      _$SessionUnitOwnerFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$SessionUnitOwnerToJson(this);
}
