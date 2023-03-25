import 'package:im_core/im_core.dart';
import 'package:im_core/src/services/request_get.dart';

class SessionUnitGetMessage extends RequestGet<MessageDto> {
  ///
  @override
  String get apiUrl => '/api/app/session-unit/$id/message/$messageId';

  ///
  @override
  MessageDto mapToResult(dynamic data) {
    return MessageDto.fromJson(data);
  }

  ///
  SessionUnitGetMessage({
    required this.id,
    required this.messageId,
  });

  final String id;

  final int messageId;
}
