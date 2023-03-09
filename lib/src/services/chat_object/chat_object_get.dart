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
  Future<ChatObject> submit() async {
    var res = await request();
    return ChatObject.fromJson(res.data);
  }

  final int id;
}
