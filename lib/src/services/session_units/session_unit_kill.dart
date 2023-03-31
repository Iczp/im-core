import '../request_post.dart';

///退出群,删除好友,退出广场
class SessionUnitKill extends RequestPost {
  ///
  @override
  String get apiUrl => '/api/app/session-unit/$id/kill';

  ///
  @override
  mapToResult(dynamic data) {}

  SessionUnitKill({
    required this.id,
  });

  final String id;
}
