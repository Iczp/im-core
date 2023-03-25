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
    this.parentId,
    this.isEnabledParentId,
    this.isImportChildCategory,
    this.categoryIdList,
    super.maxResultCount = 10,
    super.skipCount = 0,
    super.sorting,
    super.keyword,
  })  : assert(skipCount >= 0),
        assert(maxResultCount > 0 && maxResultCount < 1000);

  ///FromJson
  factory ChatObjectGetList.fromJson(Map<String, dynamic> json) =>
      _$ChatObjectGetListFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$ChatObjectGetListToJson(this);

  ///
  @override
  PagedOuput<ChatObject> mapToResult(dynamic data) {
    return PagedOuput<ChatObject>(
      totalCount: getTotalCount(data),
      items: getItems(data).map((x) => ChatObject.fromJson(x)).toList(),
    );
  }

  final ChatObjectTypesEnum? objectType;

  final int? parentId;

  final bool? isEnabledParentId;

  final bool? isImportChildCategory;

  final List<String>? categoryIdList;
}
