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
class SessionUnit extends Entity implements Comparable<SessionUnit> {
  ///
  SessionUnit({
    required this.id,
    required this.sessionId,
    required this.ownerId,
    this.rename,
    this.destination,
    this.lastMessage,
    this.lastMessageAutoId,
    this.badge,
    this.reminderAllCount,
    this.reminderMeCount,
    this.sorting = 0,
    this.readedMessageAutoId,
    this.removeTime,
    this.clearTime,
    this.isImmersed = false,
    this.isImportant = false,
  });

  final String id;

  final String sessionId;

  final int ownerId;

  final String? rename;

  final ChatObject? destination;

  late MessageDto? lastMessage;

  late int? lastMessageAutoId;

  late int? badge;

  late int? reminderAllCount;

  late int? reminderMeCount;

  late double sorting;

  late String? title;

  late String? description;

  late int? readedMessageAutoId;

  late DateTime? removeTime;

  late DateTime? clearTime;

  late bool isImmersed;

  late bool isImportant;

  bool get isTopping => sorting != 0;

  ///FromJson
  factory SessionUnit.fromJson(Map<String, dynamic> json) =>
      _$SessionUnitFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SessionUnitToJson(this);

  @override
  mapToEntity(Map<String, dynamic> json) => _$SessionUnitFromJson(json);

  int getLastMessageId() {
    if (lastMessage != null) {
      return lastMessage!.id!;
    }
    return lastMessageAutoId ?? 0;
  }

  @override
  int compareTo(SessionUnit other) {
    var sortBySotring = -sorting.compareTo(other.sorting);
    if (sortBySotring == 0) {
      var lastMessageAutoId = getLastMessageId();
      var otherLastMessageAutoId = other.getLastMessageId();
      var sortByAutoId = -lastMessageAutoId.compareTo(otherLastMessageAutoId);
      return sortByAutoId;
    }
    return sortBySotring;

    // if (lastMessageAutoId < otherLastMessageAutoId) {
    //   return 1;
    //   // return lastMessageAutoId;
    // } else if (lastMessageAutoId > otherLastMessageAutoId) {
    //   // return lastMessageAutoId;
    //   return -1;
    // } else {
    //   return 0;
    // }
  }
}
