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
    this.rename,
    this.owner,
    this.joinWay,
    this.inviterId,
    this.roleList,
    this.tagList,
  });

  final String id;

  ///在会话内的显示名称(如：群内名称)
  final String? rename;

  final String sessionId;

  final String ownerId;

  final ChatObject? owner;

  final JoinWaysEnum? joinWay;

  final int? inviterId;

  late bool isKilled;

  final List<SessionUnitTag>? tagList;

  final List<SessionUnitRole>? roleList;

  ///FromJson
  factory SessionUnitOwner.fromJson(Map<String, dynamic> json) =>
      _$SessionUnitOwnerFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SessionUnitOwnerToJson(this);
}
