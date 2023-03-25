import 'package:im_core/entities.dart';
import '../request_get_item.dart';

class FriendshipRequestGetItem
    extends RequestGetItem<FriendshipRequestDto, String> {
  ///
  @override
  String get apiUrl => '/api/app/friendship-request/$id';

  ///
  FriendshipRequestGetItem({
    required super.id,
  });

  @override
  FriendshipRequestDto mapToResult(dynamic data) {
    return FriendshipRequestDto.fromJson(data);
  }
}
