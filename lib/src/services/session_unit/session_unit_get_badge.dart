import 'package:im_core/src/extensions/map_extension.dart';

import '../request_get.dart';

class SessionUnitGetBadge extends RequestGet<int> {
  ///
  @override
  String get apiUrl => '/api/app/session-unit/badge/$ownerId';

  @override
  Map<String, dynamic>? getQueryParameters() => ({
        'isImmersed': isImmersed,
      }).removeNullValue();

  ///
  SessionUnitGetBadge({
    required this.ownerId,
    this.isImmersed,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  ///
  @override
  int mapToResult(dynamic data) {
    return (data as num).toInt();
  }

  final int ownerId;

  final bool? isImmersed;
}
