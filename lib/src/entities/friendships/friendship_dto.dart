import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

part 'friendship_dto.g.dart';

@JsonSerializable()
class FriendshipDto extends Entity {
  ///
  FriendshipDto({
    required this.id,
    required this.ownerId,
    this.destinationId,
    this.destination,
    this.tagList = const [],
  });

  final String id;

  final int ownerId;

  final int? destinationId;

  final List<FriendshipTagDto> tagList;

  final ChatObject? destination;

  ///FromJson
  factory FriendshipDto.fromJson(Map<String, dynamic> json) =>
      _$FriendshipDtoFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$FriendshipDtoToJson(this);

  @override
  FriendshipDto mapToEntity(Map<String, dynamic> json) =>
      _$FriendshipDtoFromJson(json);
}
