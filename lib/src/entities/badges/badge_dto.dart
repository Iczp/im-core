import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

part 'badge_dto.g.dart';

@JsonSerializable()
class BadgeDto extends Entity {
  ///
  BadgeDto({
    required this.chatObjectId,
    required this.badge,
    this.appUserId,
  });

  final String? appUserId;

  final int chatObjectId;

  late final int badge;

  ///FromJson
  factory BadgeDto.fromJson(Map<String, dynamic> json) =>
      _$BadgeDtoFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$BadgeDtoToJson(this);

  ///
  void setBadge(int value) {
    badge = value;
  }
}
