import '../../entities/session_units/session_unit.dart';
import '../request_post.dart';

class SessionUnitSetReaded extends RequestPost<SessionUnit> {
  ///
  @override
  String get apiUrl =>
      '/api/app/session-unit/$id/set-readed/$messageId?isForce=$isForce';

  ///
  @override
  SessionUnit mapToResult(dynamic data) {
    return SessionUnit.fromJson(data); // ret.data as bool? ?? false;
  }

  ///
  SessionUnitSetReaded({
    required this.id,
    required this.messageId,
    this.isForce = false,
  });

  final String id;

  final int messageId;

  final bool isForce;
}
