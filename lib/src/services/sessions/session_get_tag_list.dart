import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

import '../base_dtos/paged_output.dart';
import '../request_get_list.dart';

part 'session_get_tag_list.g.dart';

@JsonSerializable()
class SessionGetTagList extends RequestGetList<PagedOuput<SessionUnitTag>> {
  ///
  @override
  String get apiUrl => '/api/app/session/tag-list';

  ///
  SessionGetTagList({
    required this.sessionId,
    super.maxResultCount = 10,
    super.skipCount = 0,
    super.sorting,
    super.keyword,
  })  : assert(skipCount >= 0),
        assert(maxResultCount > 0 && maxResultCount < 1000);

  final String sessionId;

  ///FromJson
  factory SessionGetTagList.fromJson(Map<String, dynamic> json) =>
      _$SessionGetTagListFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SessionGetTagListToJson(this);

  ///
  @override
  PagedOuput<SessionUnitTag> mapToResult(dynamic data) {
    return PagedOuput<SessionUnitTag>(
      totalCount: getTotalCount(data),
      items: getItems(data).map((x) => SessionUnitTag.fromJson(x)).toList(),
    );
  }
}
