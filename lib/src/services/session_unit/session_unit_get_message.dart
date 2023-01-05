import 'package:im_core/im_core.dart';
import 'package:im_core/src/services/request_get.dart';

class SessionUnitGetMessage extends RequestGet<MessageDto> {
  ///
  @override
  String get apiUrl => '/api/app/session-unit/$id/message/$messageId';

  ///
  @override
  Future<MessageDto> submit() async {
    var ret = await request();
    return MessageDto.fromJson(ret.data);
  }

  ///
  SessionUnitGetMessage({
    required this.id,
    required this.messageId,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  ///
  final String id;

  ///
  final String messageId;
}
