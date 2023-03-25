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
  });

  ///
  @override
  int mapToResult(dynamic data) {
    return (data as num).toInt();
  }

  final int ownerId;

  final bool? isImmersed;
}
