import 'package:json_annotation/json_annotation.dart';

import '../../../entities.dart';
import 'scope_unit.dart';

part 'push_payload.g.dart';

@JsonSerializable()
class PushPayload extends Entity {
  PushPayload({
    required this.appUserId,
    // required this.chatObjectId,
    // required this.sessionUnitId,
    required this.scopes,
    required this.command,
    required this.payload,
  });

  final String appUserId;

  // final String chatObjectId;

  // final String sessionUnitId;

  final List<ScopeUnit> scopes;

  final String command;

  final Object payload;

  ///FromJson
  factory PushPayload.fromJson(Map<String, dynamic> json) =>
      _$PushPayloadFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$PushPayloadToJson(this);

  @override
  PushPayload mapToEntity(Map<String, dynamic> json) =>
      _$PushPayloadFromJson(json);
}
