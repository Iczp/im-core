import 'package:im_core/src/entities/messages/message_dto.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../entities.dart';

part 'push_message.g.dart';

@JsonSerializable()
class PushMessage extends Entity {
  PushMessage({
    required this.appUserId,
    required this.chatObjectId,
    required this.sessionUnitId,
    required this.command,
    required this.payload,
  });

  final String appUserId;

  final String chatObjectId;

  final String sessionUnitId;

  final String command;

  final Object payload;

  ///FromJson
  factory PushMessage.fromJson(Map<String, dynamic> json) =>
      _$PushMessageFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$PushMessageToJson(this);

  @override
  PushMessage mapToEntity(Map<String, dynamic> json) =>
      _$PushMessageFromJson(json);
}
