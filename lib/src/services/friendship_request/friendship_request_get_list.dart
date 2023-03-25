import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums/chat_object_types_enum.dart';
import '../base_dtos/paged_output.dart';
import '../request_get_list.dart';

part 'friendship_request_get_list.g.dart';

@JsonSerializable()
class FriendshipRequestGetList
    extends RequestGetList<PagedOuput<FriendshipRequestDto>> {
  ///
  @override
  String get apiUrl => '/api/app/friendship-request';

  ///
  FriendshipRequestGetList({
    super.maxResultCount = 10,
    super.skipCount = 0,
    super.sorting,
    super.keyword,
  })  : assert(skipCount >= 0),
        assert(maxResultCount > 0 && maxResultCount < 1000);

  ///FromJson
  factory FriendshipRequestGetList.fromJson(Map<String, dynamic> json) =>
      _$FriendshipRequestGetListFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$FriendshipRequestGetListToJson(this);

  ///
  @override
  PagedOuput<FriendshipRequestDto> mapToResult(dynamic data) {
    return PagedOuput<FriendshipRequestDto>(
      totalCount: getTotalCount(data),
      items:
          getItems(data).map((x) => FriendshipRequestDto.fromJson(x)).toList(),
    );
  }
}
