import '../request_post.dart';

class SessionUnitSetTopping extends RequestPost<bool> {
  ///
  @override
  String get apiUrl =>
      '/api/app/session-unit/$id/set-topping?isTopping=$isTopping';

  ///
  @override
  Future<bool> submit() async {
    await request();
    return isTopping;
  }

  ///
  SessionUnitSetTopping({
    required this.id,
    required this.isTopping,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  final String id;

  final bool isTopping;
}
