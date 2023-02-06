import 'package:im_core/src/entities/messages/message_dto.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../entities.dart';

part 'push_message.g.dart';

@JsonSerializable()
class PushMessage extends Entity {
  PushMessage({
    required this.chatObjectId,
    required this.payload,
    required this.command,
  });

  final String chatObjectId;

  final Object payload;

  final String command;

  ///FromJson
  factory PushMessage.fromJson(Map<String, dynamic> json) =>
      _$PushMessageFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$PushMessageToJson(this);

  @override
  PushMessage mapToEntity(Map<String, dynamic> json) =>
      _$PushMessageFromJson(json);
}
