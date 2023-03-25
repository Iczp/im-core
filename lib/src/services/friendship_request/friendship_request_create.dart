import 'package:im_core/entities.dart';
import 'package:im_core/src/services/request_post.dart';
import 'package:json_annotation/json_annotation.dart';

part 'friendship_request_create.g.dart';

@JsonSerializable()
class FriendshipRequestCreate extends RequestPost<FriendshipRequestDto> {
  ///
  @override
  String get apiUrl => '/api/app/friendship-request';

  ///
  FriendshipRequestCreate({
    required this.ownerId,
    required this.destinationId,
    this.message,
  });

  ///FromJson
  factory FriendshipRequestCreate.fromJson(Map<String, dynamic> json) =>
      _$FriendshipRequestCreateFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$FriendshipRequestCreateToJson(this);

  @override
  FriendshipRequestDto mapToResult(dynamic data) {
    return FriendshipRequestDto.fromJson(data);
  }

  final int? ownerId;

  final int destinationId;

  final String? message;
}
