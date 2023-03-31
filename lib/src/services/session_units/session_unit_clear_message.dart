import '../request_post.dart';

class SessionUnitClearMessage extends RequestPost {
  ///
  @override
  String get apiUrl => '/api/app/session-unit/$id/clear-message';

  ///
  @override
  void mapToResult(dynamic data) {}

  ///
  SessionUnitClearMessage({
    required this.id,
  });

  final String id;
}
