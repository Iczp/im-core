import 'package:im_core/entities.dart';
import '../request_get.dart';

class ChatObjectGet extends RequestGet<ChatObject> {
  ///
  @override
  String get apiUrl => '/api/app/chat-object/$id';

  ///
  ChatObjectGet({
    required this.id,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  @override
  ChatObject mapToResult(dynamic data) {
    return ChatObject.fromJson(data);
  }

  final int id;
}
