import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums/chat_object_types_enum.dart';
import '../base_dtos/paged_output.dart';
import '../request_get_list.dart';

part 'chat_object_get_list.g.dart';

@JsonSerializable()
class ChatObjectGetList extends RequestGetList<PagedOuput<ChatObject>> {
  ///
  @override
  String get apiUrl => '/api/app/chat-object';

  ///
  ChatObjectGetList({
    this.objectType,
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

  final ChatObjectTypesEnum? objectType;

  ///FromJson
  factory ChatObjectGetList.fromJson(Map<String, dynamic> json) =>
      _$ChatObjectGetListFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$ChatObjectGetListToJson(this);

  ///
  @override
  Map<String, dynamic>? getQueryParameters() => toJson();

  ///
  @override
  PagedOuput<ChatObject> mapToResult(dynamic data) {
    return PagedOuput<ChatObject>(
      totalCount: getTotalCount(data),
      items: getItems(data).map((x) => ChatObject.fromJson(x)).toList(),
    );
  }
}
