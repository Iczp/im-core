import '../../entities/session_units/session_unit.dart';
import '../request_get.dart';

// part 'session_unit_get.g.dart';

// @JsonSerializable()
class SessionUnitGet extends RequestGet<SessionUnit> {
  ///
  @override
  String get apiUrl => '/api/app/session-unit/$id';

  ///
  SessionUnitGet({
    required this.id,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  @override
  Future<SessionUnit> fetch() async {
    var res = await request();
    return SessionUnit.fromJson(res.data);
  }

  ///
  final String id;
}
