import 'package:im_core/entities.dart';
import 'package:im_core/src/extensions/map_extension.dart';

import '../request_get.dart';

class SessionUnitGetBadge extends RequestGet<BadgeDto> {
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
  BadgeDto mapToResult(dynamic data) {
    return BadgeDto.fromJson(data);
  }

  final int ownerId;

  final bool? isImmersed;
}
