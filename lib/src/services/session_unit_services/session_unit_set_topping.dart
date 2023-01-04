import '../request_post.dart';

class SessionUnitSetTopping extends RequestPost {
  ///
  @override
  String get apiUrl =>
      '/api/app/session-unit/$id/set-topping?isTopping=$isTopping';

  ///
  @override
  Future sendAsync() async {
    await requestAsync();
  }

  @override
  getPostData() => null;

  ///
  SessionUnitSetTopping({
    required this.id,
    required this.isTopping,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  ///
  final String id;

  ///
  final bool isTopping;
}
