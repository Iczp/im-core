import '../request_post.dart';

class SessionUnitRemoveSession extends RequestPost {
  ///
  @override
  String get apiUrl => '/api/app/session-unit/$id/remove-session';

  ///
  @override
  mapToResult(dynamic data) {}

  ///
  SessionUnitRemoveSession({
    required this.id,
  });

  final String id;
}
