import 'package:im_core/src/services/request_post.dart';
import 'package:json_annotation/json_annotation.dart';

part 'friendship_request_handle.g.dart';

@JsonSerializable()
class FriendshipRequestHandle extends RequestPost<DateTime> {
  ///
  @override
  String get apiUrl => '/api/app/friendship-request/handl-request';

  ///
  FriendshipRequestHandle(
    this.friendshipRequestId,
    this.isAgreed,
    this.handleMessage,
  );

  ///FromJson
  factory FriendshipRequestHandle.fromJson(Map<String, dynamic> json) =>
      _$FriendshipRequestHandleFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$FriendshipRequestHandleToJson(this);

  @override
  DateTime mapToResult(dynamic data) {
    return DateTime.parse(data);
  }

  final String? friendshipRequestId;

  final bool isAgreed;

  final String? handleMessage;
}
