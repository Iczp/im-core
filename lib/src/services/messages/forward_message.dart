import 'package:json_annotation/json_annotation.dart';

import '../../extensions/map_extension.dart';
import '../request_post.dart';

part 'forward_message.g.dart';

@JsonSerializable()
class ForwardMessage extends RequestPost<List<String>> {
  ///
  @override
  String get apiUrl => '/api/app/message/forward-message';

  ///
  @override
  getPostData() => toJson().removeKey('sessionUnitId');

  ///
  @override
  Future<List<String>> submit() async {
    var res = await request();
    return res.data as List<String>;
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
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  final String sessionUnitId;

  final String senderId;

  final String sourceMessageId;

  final List<String>? ignoreConnections;
}
