import 'package:im_core/entities.dart';
import '../request_get_item.dart';

class ChatObjectGet extends RequestGetItem<ChatObject, int> {
  ///
  @override
  String get apiUrl => '/api/app/chat-object/$id';

  ///
  ChatObjectGet({
    required super.id,
  });

  @override
  ChatObject mapToResult(dynamic data) {
    return ChatObject.fromJson(data);
  }
}
