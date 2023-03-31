import '../request_post.dart';

/// 不显示会话
class SessionUnitRemove extends RequestPost {
  ///
  @override
  String get apiUrl => '/api/app/session-unit/$id/remove';

  ///
  @override
  mapToResult(dynamic data) {}

  ///
  SessionUnitRemove({
    required this.id,
  });

  final String id;
}
