import '../request_post.dart';

class SessionUnitSetReaded extends RequestPost {
  ///
  @override
  String get apiUrl =>
      '/api/app/session-unit/$id/set-readed/$messageId?isForce=$isForce';

  ///
  @override
  Future submit() async {
    await request();
  }

  @override
  getPostData() => null;

  ///
  SessionUnitSetReaded({
    required this.id,
    required this.messageId,
    this.isForce = false,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  ///
  final String id;

  ///
  final String messageId;

  ///
  final bool isForce;
}
