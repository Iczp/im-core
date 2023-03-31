import 'package:im_core/src/entities/session_units/session_unit_owner.dart';
import 'package:im_core/src/enums/chat_object_types_enum.dart';
import 'package:im_core/src/enums/joinways_enum.dart';
import 'package:json_annotation/json_annotation.dart';

import '../base_dtos/paged_output.dart';
import '../request_get_list.dart';

part 'session_unit_get_list_by_session_id.g.dart';

@JsonSerializable()
class SessionGetListBySessionId
    extends RequestGetList<PagedOuput<SessionUnitOwner>> {
  ///
  @override
  String get apiUrl => '/api/app/session-unit/by-session-id';

  ///
  SessionGetListBySessionId({
    required this.sessionId,
    this.isKilled,
    this.tagId,
    this.roleId,
    this.joinWay,
    this.inviterId,
    this.ownerIdList,
    this.ownerTypeList,
    super.maxResultCount = 10,
    super.skipCount = 0,
    super.sorting,
    super.keyword,
  })  : assert(skipCount >= 0),
        assert(maxResultCount > 0 && maxResultCount < 1000);

  final List<int>? ownerIdList;

  final List<ChatObjectTypesEnum>? ownerTypeList;

  final String sessionId;

  final bool? isKilled;

  final String? tagId;

  final String? roleId;

  final JoinWaysEnum? joinWay;

  final int? inviterId;

  ///FromJson
  factory SessionGetListBySessionId.fromJson(Map<String, dynamic> json) =>
      _$SessionGetListBySessionIdFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SessionGetListBySessionIdToJson(this);

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
