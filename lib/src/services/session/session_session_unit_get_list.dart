import 'package:im_core/src/entities/session_units/session_unit_owner.dart';
import 'package:im_core/src/enums/joinways_enum.dart';
import 'package:json_annotation/json_annotation.dart';

import '../base_dtos/paged_output.dart';
import '../request_get_list.dart';

part 'session_session_unit_get_list.g.dart';

@JsonSerializable()
class SessionSessionUnitGetList
    extends RequestGetList<PagedOuput<SessionUnitOwner>> {
  ///
  @override
  String get apiUrl => '/api/app/session/session-unit-list';

  ///
  SessionSessionUnitGetList({
    this.ownerIdList,
    this.sessionId,
    this.tagId,
    this.roleId,
    this.joinWay,
    this.inviterId,
    super.maxResultCount = 10,
    super.skipCount = 0,
    super.sorting,
    super.keyword,
  })  : assert(skipCount >= 0),
        assert(maxResultCount > 0 && maxResultCount < 1000);

  final List<int>? ownerIdList;

  final String? sessionId;

  final String? tagId;

  final String? roleId;

  final JoinWaysEnum? joinWay;

  final int? inviterId;

  ///FromJson
  factory SessionSessionUnitGetList.fromJson(Map<String, dynamic> json) =>
      _$SessionSessionUnitGetListFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SessionSessionUnitGetListToJson(this);

  ///
  @override
  Map<String, dynamic>? getQueryParameters() => toJson();

  ///
  @override
  PagedOuput<SessionUnitOwner> mapToResult(dynamic data) {
    return PagedOuput<SessionUnitOwner>(
      totalCount: getTotalCount(data),
      items: getItems(data).map((x) => SessionUnitOwner.fromJson(x)).toList(),
    );
  }
}
