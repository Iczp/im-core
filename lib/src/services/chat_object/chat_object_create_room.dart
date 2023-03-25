import 'package:im_core/entities.dart';
import 'package:im_core/src/services/request_post.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_object_create_room.g.dart';

@JsonSerializable()
class ChatObjectCreateRoom extends RequestPost<ChatObject> {
  ///
  @override
  String get apiUrl => '/api/app/chat-object/room';

  ///
  @override
  dynamic getPostData() => toJson();

  ///
  ChatObjectCreateRoom({
    required this.name,
    this.code,
    this.description,
    this.ownerId,
    this.chatObjectIdList = const <int>[],
  });

  ///FromJson
  factory ChatObjectCreateRoom.fromJson(Map<String, dynamic> json) =>
      _$ChatObjectCreateRoomFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$ChatObjectCreateRoomToJson(this);

  @override
  ChatObject mapToResult(dynamic data) {
    return ChatObject.fromJson(data);
  }

  final String name;

  final String? code;

  final int? ownerId;

  final String? description;

  final List<int> chatObjectIdList;
}
