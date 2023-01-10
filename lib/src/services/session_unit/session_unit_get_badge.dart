import '../request_get.dart';

class SessionUnitGetBadge extends RequestGet<int> {
  ///
  @override
  String get apiUrl => '/api/app/session-unit/badge/$ownerId';

  ///
  SessionUnitGetBadge({
    required this.ownerId,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  @override
  Future<int> submit() async {
    var res = await request();
    return (res.data as num).toInt();
  }

  final String ownerId;
}
