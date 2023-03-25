import 'package:im_core/entities.dart';

import '../../extensions/map_extension.dart';
import '../request_post.dart';

abstract class SendMessage<T extends MessageContent>
    extends RequestPost<MessageDto> {
  ///
  @override
  getPostData() => toJson().removeKey('sessionUnitId');

  ///
  @override
  MessageDto mapToResult(dynamic data) {
    return MessageDto.fromJson(data);
  }

  ///
  SendMessage({
    required this.senderId,
    required this.receiverId,
    this.keyName,
    this.keyValue,
    this.quoteMessageId,
    required this.content,
    required this.sessionUnitId,
    this.ignoreConnections,
  });

  final String sessionUnitId;

  final List<String>? ignoreConnections;

  final int senderId;

  final int receiverId;

  final String? keyName;

  final String? keyValue;

  final int? quoteMessageId;

  final T content;
}
