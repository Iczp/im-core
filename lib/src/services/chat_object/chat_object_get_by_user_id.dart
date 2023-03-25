import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';
import '../request_get.dart';
part 'chat_object_get_by_user_id.g.dart';

@JsonSerializable()
class ChatObjectGetByUserId extends RequestGet<ChatObject> {
  ///
  @override
  String get apiUrl => '/api/app/chat-object/by-user-id/$userId';

  ///
  ChatObjectGetByUserId({
    required this.userId,
  });

  ///FromJson
  factory ChatObjectGetByUserId.fromJson(Map<String, dynamic> json) =>
      _$ChatObjectGetByUserIdFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$ChatObjectGetByUserIdToJson(this);

  @override
  ChatObject mapToResult(dynamic data) {
    return ChatObject.fromJson(data);
  }

  final String userId;
}
