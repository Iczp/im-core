import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

part 'friendship_tag_dto.g.dart';

@JsonSerializable()
class FriendshipTagDto extends Entity {
  ///
  FriendshipTagDto({
    required this.id,
    required this.ownerId,
    this.destinationId,
    this.isHandled,
    this.isAgreed,
    this.message,
    this.destination,
  });

  final String id;
  final int ownerId;

  final int? destinationId;

  final bool? isHandled;

  final bool? isAgreed;

  final String? message;

  final ChatObject? destination;

  ///FromJson
  factory FriendshipTagDto.fromJson(Map<String, dynamic> json) =>
      _$FriendshipTagDtoFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$FriendshipTagDtoToJson(this);

  @override
  FriendshipTagDto mapToEntity(Map<String, dynamic> json) =>
      _$FriendshipTagDtoFromJson(json);
}
