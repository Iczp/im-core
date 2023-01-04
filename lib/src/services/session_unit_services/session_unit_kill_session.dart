import '../request_post.dart';

class SessionUnitKillSession extends RequestPost {
  ///
  @override
  String get apiUrl => '/api/app/session-unit/$id/kill-session';

  ///
  @override
  Future sendAsync() async {
    await requestAsync();
  }

  @override
  getPostData() => null;

  ///
  SessionUnitKillSession({
    required this.id,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  ///
  final String id;
}