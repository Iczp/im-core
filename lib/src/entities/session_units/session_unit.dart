import 'package:json_annotation/json_annotation.dart';

import '../chat_objects/chat_object.dart';
import '../entity.dart';
import '../messages/message_dto.dart';

part 'session_unit.g.dart';

/// <summary>
/// 用户
/// </summary>
///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()
class SessionUnit extends Entity {
  ///
  SessionUnit({
    required this.id,
    required this.sessionId,
    required this.ownerId,
    this.destination,
    this.lastMessage,
    this.badge,
    this.reminderAllCount,
    this.reminderMeCount,
    this.sorting,
    this.readedMessageAutoId,
    this.removeTime,
    this.clearTime,
  });

  final String id;

  final String sessionId;

  final String ownerId;

  final ChatObject? destination;

  late MessageDto? lastMessage;

  late int? badge;

  late int? reminderAllCount;

  late int? reminderMeCount;

  late double? sorting;

  late String? title;

  late String? description;

  late int? readedMessageAutoId;

  late DateTime? removeTime;

  late DateTime? clearTime;

  ///FromJson
  factory SessionUnit.fromJson(Map<String, dynamic> json) =>
      _$SessionUnitFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$SessionUnitToJson(this);

  @override
  mapToEntity(Map<String, dynamic> json) => _$SessionUnitFromJson(json);
}
