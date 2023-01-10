import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

import 'send_message.dart';

part 'send_link_message.g.dart';

@JsonSerializable()
class SendLinkMessage extends SendMessage<LinkContentDto> {
  ///
  @override
  String get apiUrl => '/api/app/message/send-link-message';

  ///FromJson
  factory SendLinkMessage.fromJson(Map<String, dynamic> json) =>
      _$SendLinkMessageFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SendLinkMessageToJson(this);

  ///
  SendLinkMessage({
    required super.senderId,
    required super.receiverId,
    super.keyName,
    super.keyValue,
    super.quoteMessageId,
    required super.content,
    required super.sessionUnitId,
    super.ignoreConnections,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });
}
