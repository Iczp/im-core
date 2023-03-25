import 'package:im_core/entities.dart';
import 'package:im_core/src/services/request_get_many.dart';

// part 'chat_object_get_many.g.dart';

// @JsonSerializable()
class ChatObjectGetMany extends RequestGetMany<List<ChatObject>, int> {
  ///
  @override
  String get apiUrl => '/api/app/chat-object/many';

  ///
  ChatObjectGetMany({
    required super.idList,
  });

  @override
  List<ChatObject> mapToResult(dynamic data) {
    return (data as List).map((e) => ChatObject.fromJson(e)).toList();
  }
}
