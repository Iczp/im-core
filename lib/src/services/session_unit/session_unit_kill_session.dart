import '../request_post.dart';

class SessionUnitKillSession extends RequestPost {
  ///
  @override
  String get apiUrl => '/api/app/session-unit/$id/kill-session';

  ///
  @override
  mapToResult(dynamic data) {}

  SessionUnitKillSession({
    required this.id,
  });

  final String id;
}
