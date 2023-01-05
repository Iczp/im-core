import '../request_post.dart';

class SessionUnitClearMessage extends RequestPost {
  ///
  @override
  String get apiUrl => '/api/app/session-unit/$id/clear-message';

  ///
  @override
  Future fetch() async {
    await request();
  }

  ///
  SessionUnitClearMessage({
    required this.id,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  ///
  final String id;
}
