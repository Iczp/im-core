import 'package:im_core/entities.dart';
import 'package:im_core/src/services/request_get_many.dart';

// @JsonSerializable()
class FriendshipRequestGetMany
    extends RequestGetMany<List<FriendshipRequestDto>, int> {
  ///
  @override
  String get apiUrl => '/api/app/chat-object/many';

  ///
  FriendshipRequestGetMany({
    required super.idList,
  });

  @override
  List<FriendshipRequestDto> mapToResult(dynamic data) {
    return (data as List).map((e) => FriendshipRequestDto.fromJson(e)).toList();
  }
}
