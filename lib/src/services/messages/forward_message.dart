import 'package:json_annotation/json_annotation.dart';

import '../../extensions/map_extension.dart';
import '../request_post.dart';

part 'forward_message.g.dart';

@JsonSerializable()
class ForwardMessage extends RequestPost<List<int>> {
  ///
  @override
  String get apiUrl => '/api/app/message/forward-message';

  ///
  @override
  getPostData() => toJson().removeKey('sessionUnitId');

  ///
  @override
  List<int> mapToResult(dynamic data) {
    return data as List<int>;
  }

  ///FromJson
  factory ForwardMessage.fromJson(Map<String, dynamic> json) =>
      _$ForwardMessageFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$ForwardMessageToJson(this);

  ///
  ForwardMessage({
    required this.sourceMessageId,
    required this.senderId,
    required this.sessionUnitId,
    this.ignoreConnections,
  });

  final String sessionUnitId;

  final int senderId;

  final int sourceMessageId;

  final List<String>? ignoreConnections;
}
