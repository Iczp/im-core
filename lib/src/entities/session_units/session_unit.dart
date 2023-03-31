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
    this.memberName,
    this.remarks,
    this.isCantacts = false,
    this.isShowMemberName = true,
    this.isShowReaded = false,
    this.backgroundImage,
    this.destination,
    this.lastMessage,
    this.lastMessageId,
    this.badge,
    this.reminderAllCount,
    this.reminderMeCount,
    this.sorting = 0,
    this.readedMessageId,
    this.removeTime,
    this.clearTime,
    this.isImmersed = false,
    this.isImportant = false,
  });

  final String id;

  final String sessionId;

  final int ownerId;

  late String? rename;

  late String? memberName;

  late String? remarks;

  late bool isCantacts;

  late bool isImmersed;

  late bool isShowMemberName;

  late bool isShowReaded;

  late bool isImportant;

  late String? backgroundImage;

  late ChatObject? destination;

  late MessageDto? lastMessage;

  late int? lastMessageId;

  late int? badge;

  late int? reminderAllCount;

  late int? reminderMeCount;

  late double sorting;

  late String? title;

  late String? description;

  late int? readedMessageId;

  late DateTime? removeTime;

  late DateTime? clearTime;

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
    return lastMessageId ?? 0;
  }

  @override
  int compareTo(SessionUnit other) {
    var sortBySotring = -sorting.compareTo(other.sorting);
    if (sortBySotring == 0) {
      var lastMessageId = getLastMessageId();
      var otherLastMessageId = other.getLastMessageId();
      var sortByAutoId = -lastMessageId.compareTo(otherLastMessageId);
      return sortByAutoId;
    }
    return sortBySotring;
  }
}
