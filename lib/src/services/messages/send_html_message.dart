import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

import 'send_message.dart';

part 'send_html_message.g.dart';

@JsonSerializable()
class SendHtmlMessage extends SendMessage<HtmlContentDto> {
  ///
  @override
  String get apiUrl => '/api/app/message/send-html-message';

  ///FromJson
  factory SendHtmlMessage.fromJson(Map<String, dynamic> json) =>
      _$SendHtmlMessageFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SendHtmlMessageToJson(this);

  ///
  SendHtmlMessage({
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
