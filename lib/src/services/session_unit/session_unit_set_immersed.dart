import '../../../entities.dart';
import '../request_post.dart';

class SessionUnitSetImmersed extends RequestPost<SessionUnit> {
  ///
  @override
  String get apiUrl =>
      '/api/app/session-unit/$id/set-immersed?isImmersed=$isImmersed';

  ///
  @override
  SessionUnit mapToResult(dynamic data) {
    return SessionUnit.fromJson(data);
  }

  ///
  SessionUnitSetImmersed({
    required this.id,
    required this.isImmersed,
  });

  final String id;

  final bool isImmersed;
}
