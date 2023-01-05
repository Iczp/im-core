import 'package:json_annotation/json_annotation.dart';

import '../../entities/session_units/session_unit_owner.dart';
import '../../extensions/map_extension.dart';
import '../base_dtos/paged_output.dart';
import '../request_get_list.dart';

part 'session_unit_get_session_member_list.g.dart';

@JsonSerializable()
class SessionUnitGetSessionMemberList
    extends RequestGetList<PagedOuput<SessionUnitOwner>> {
  ///
  @override
  String get apiUrl => '/api/app/session-unit/$id/session-member-list';

  ///
  SessionUnitGetSessionMemberList({
    this.id,
    this.tagId,
    this.roleId,
    super.maxResultCount = 10,
    super.skipCount = 0,
    super.sorting,
    super.keyword,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  })  : assert(skipCount >= 0),
        assert(maxResultCount > 0 && maxResultCount < 1000);

  ///

  final String? id;

  ///
  final String? tagId;

  ///
  final String? roleId;

  ///FromJson
  factory SessionUnitGetSessionMemberList.fromJson(Map<String, dynamic> json) =>
      _$SessionUnitGetSessionMemberListFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() =>
      _$SessionUnitGetSessionMemberListToJson(this);

  ///
  @override
  Map<String, dynamic>? getQueryParameters() => toJson().removeKey('id');

  ///
  @override
  Future<PagedOuput<SessionUnitOwner>> fetch() async {
    var res = await request();
    return PagedOuput<SessionUnitOwner>(
      totalCount: getTotalCount(res.data),
      items:
          getItems(res.data).map((x) => SessionUnitOwner.fromJson(x)).toList(),
    );
  }
}
