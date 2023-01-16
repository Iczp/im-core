import '../../../entities.dart';
import '../request_post.dart';

class SessionUnitSetImmersed extends RequestPost<SessionUnit> {
  ///
  @override
  String get apiUrl =>
      '/api/app/session-unit/$id/set-immersed?isImmersed=$isImmersed';

  ///
  @override
  Future<SessionUnit> submit() async {
    var ret = await request();
    return SessionUnit.fromJson(ret.data);
  }

  ///
  SessionUnitSetImmersed({
    required this.id,
    required this.isImmersed,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  final String id;

  final bool isImmersed;
}
