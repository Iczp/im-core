import 'package:im_core/entities.dart';

import '../request_get.dart';

class SessionUnitGetBadgeByCurrentUser extends RequestGet<List<BadgeDto>> {
  ///
  @override
  String get apiUrl => '/api/app/session-unit/badge-by-current-user';

  @override
  Map<String, dynamic>? getQueryParameters() => toJson();

  ///
  SessionUnitGetBadgeByCurrentUser({
    this.isImmersed,
  });

  ///
  @override
  List<BadgeDto> mapToResult(dynamic data) {
    return (data as List).map((e) => BadgeDto.fromJson(e)).toList();
  }

  final bool? isImmersed;
}
