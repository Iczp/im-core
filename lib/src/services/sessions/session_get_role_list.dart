import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

import '../base_dtos/paged_output.dart';
import '../request_get_list.dart';

part 'session_get_role_list.g.dart';

@JsonSerializable()
class SessionGetRoleList extends RequestGetList<PagedOuput<SessionUnitRole>> {
  ///
  @override
  String get apiUrl => '/api/app/session/role-list';

  ///
  SessionGetRoleList({
    required this.sessionId,
    super.maxResultCount = 10,
    super.skipCount = 0,
    super.sorting,
    super.keyword,
  })  : assert(skipCount >= 0),
        assert(maxResultCount > 0 && maxResultCount < 1000);

  final String sessionId;

  ///FromJson
  factory SessionGetRoleList.fromJson(Map<String, dynamic> json) =>
      _$SessionGetRoleListFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SessionGetRoleListToJson(this);

  ///
  @override
  PagedOuput<SessionUnitRole> mapToResult(dynamic data) {
    return PagedOuput<SessionUnitRole>(
      totalCount: getTotalCount(data),
      items: getItems(data).map((x) => SessionUnitRole.fromJson(x)).toList(),
    );
  }
}
