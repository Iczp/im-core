import '../../entities/session_units/session_unit.dart';
import '../request_post.dart';

class SessionUnitSetReaded extends RequestPost<SessionUnit> {
  ///
  @override
  String get apiUrl =>
      '/api/app/session-unit/$id/set-readed/$messageId?isForce=$isForce';

  ///
  @override
  Future<SessionUnit> submit() async {
    var ret = await request();
    return SessionUnit.fromJson(ret.data); // ret.data as bool? ?? false;
  }

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

  final String id;

  final String messageId;

  final bool isForce;
}
