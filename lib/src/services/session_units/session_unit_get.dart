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
  });

  @override
  SessionUnit mapToResult(dynamic data) {
    return SessionUnit.fromJson(data);
  }

  final String id;
}
