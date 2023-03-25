import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

import '../base_dtos/paged_output.dart';
import '../request_get_list.dart';

part 'chat_object_get_list_by_current_user.g.dart';

@JsonSerializable()
class ChatObjectGetListByCurrentUser
    extends RequestGetList<PagedOuput<ChatObject>> {
  ///
  @override
  String get apiUrl => '/api/app/chat-object/by-current-user';

  ///
  @override
  Map<String, dynamic>? getQueryParameters() => toJson();

  ///
  ChatObjectGetListByCurrentUser({
    super.maxResultCount = 10,
    super.skipCount = 0,
    super.sorting,
    super.keyword,
  })  : assert(skipCount >= 0),
        assert(maxResultCount > 0 && maxResultCount < 1000);

  ///FromJson
  factory ChatObjectGetListByCurrentUser.fromJson(Map<String, dynamic> json) =>
      _$ChatObjectGetListByCurrentUserFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$ChatObjectGetListByCurrentUserToJson(this);

  ///
  @override
  PagedOuput<ChatObject> mapToResult(dynamic data) {
    return PagedOuput<ChatObject>(
      totalCount: getTotalCount(data),
      items: getItems(data).map((x) => ChatObject.fromJson(x)).toList(),
    );
  }
}
