import 'package:im_core/entities.dart';
import '../request_get.dart';

// part 'session_unit_get.g.dart';

// @JsonSerializable()
class ChatObjectGetMany extends RequestGet<List<ChatObject>> {
  ///
  @override
  String get apiUrl => '/api/app/chat-object/many';

  @override
  Map<String, dynamic>? getQueryParameters() => {
        'idList': idList,
      };

  ///
  ChatObjectGetMany({
    required this.idList,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  @override
  Future<List<ChatObject>> submit() async {
    var res = await request();
    return (res.data as List).map((e) => ChatObject.fromJson(e)).toList();
  }

  final List<int> idList;
}
