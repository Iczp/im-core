import '../request_post.dart';

class SessionUnitRemoveSession extends RequestPost {
  ///
  @override
  String get apiUrl => '/api/app/session-unit/$id/remove-session';

  ///
  @override
  Future sendAsync() async {
    await requestAsync();
  }

  @override
  getPostData() => null;

  ///
  SessionUnitRemoveSession({
    required this.id,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  ///
  final String id;
}
