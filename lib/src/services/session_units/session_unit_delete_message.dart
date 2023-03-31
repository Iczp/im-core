import '../request_post.dart';

class SessionUnitDeleteMessage extends RequestPost {
  ///
  @override
  String get apiUrl => '/api/app/session-unit/$id/delete-message/$messageId';

  ///
  @override
  void mapToResult(dynamic data) {}

  ///
  SessionUnitDeleteMessage({
    required this.id,
    required this.messageId,
  });

  final String id;

  final String messageId;
}
