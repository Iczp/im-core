import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

import '../base_dtos/paged_output.dart';
import '../request_get_list.dart';

part 'session_get_list.g.dart';

@JsonSerializable()
class SessionGetList extends RequestGetList<PagedOuput<Session>> {
  ///
  @override
  String get apiUrl => '/api/app/session/role-list';

  ///
  SessionGetList({
    this.ownerId,
    super.maxResultCount = 10,
    super.skipCount = 0,
    super.sorting,
    super.keyword,
  })  : assert(skipCount >= 0),
        assert(maxResultCount > 0 && maxResultCount < 1000);

  final int? ownerId;

  ///FromJson
  factory SessionGetList.fromJson(Map<String, dynamic> json) =>
      _$SessionGetListFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SessionGetListToJson(this);

  ///
  @override
  PagedOuput<Session> mapToResult(dynamic data) {
    return PagedOuput<Session>(
      totalCount: getTotalCount(data),
      items: getItems(data).map((x) => Session.fromJson(x)).toList(),
    );
  }
}
