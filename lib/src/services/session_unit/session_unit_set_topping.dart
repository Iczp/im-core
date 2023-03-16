import '../../../entities.dart';
import '../request_post.dart';

class SessionUnitSetTopping extends RequestPost<SessionUnit> {
  ///
  @override
  String get apiUrl =>
      '/api/app/session-unit/$id/set-topping?isTopping=$isTopping';

  ///
  @override
  SessionUnit mapToResult(dynamic data) {
    return SessionUnit.fromJson(data);
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
