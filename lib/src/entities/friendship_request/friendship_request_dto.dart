import 'dart:convert';

import 'package:im_core/entities.dart';
import 'package:im_core/src/entities/entity.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums/chat_object_types_enum.dart';

part 'friendship_request_dto.g.dart';

@JsonSerializable()
class FriendshipRequestDto extends Entity {
  ///
  FriendshipRequestDto({
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
  factory FriendshipRequestDto.fromJson(Map<String, dynamic> json) =>
      _$FriendshipRequestDtoFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$FriendshipRequestDtoToJson(this);

  @override
  FriendshipRequestDto mapToEntity(Map<String, dynamic> json) =>
      _$FriendshipRequestDtoFromJson(json);

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
