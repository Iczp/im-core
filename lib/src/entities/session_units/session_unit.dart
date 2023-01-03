import 'package:im_core/im_core.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums.dart';
import '../departments/department_dto.dart';
import '../medias/media_dto.dart';
import '../positions/position_dto.dart';

part 'session_unit.g.dart';

/// <summary>
/// 用户
/// </summary>
///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()
class SessionUnit {
  ///
  SessionUnit({
    required this.sessionId,
    required this.ownerId,
    this.lastMessage,
    this.badge,
    this.reminderAllCount,
    this.reminderMeCount,
    this.sorting,
  });

  final String sessionId;

  final String ownerId;

  final MessageDto? lastMessage;

  final int? badge;

  final int? reminderAllCount;

  final int? reminderMeCount;

  final int? sorting;

  ///FromJson
  factory SessionUnit.fromJson(Map<String, dynamic> json) =>
      _$SessionUnitFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SessionUnitToJson(this);
}
