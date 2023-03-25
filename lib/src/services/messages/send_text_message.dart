import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

import 'send_message.dart';

part 'send_text_message.g.dart';

@JsonSerializable()
class SendTextMessage extends SendMessage<TextContentDto> {
  ///
  @override
  String get apiUrl => '/api/app/message/send-text-message';

  ///FromJson
  factory SendTextMessage.fromJson(Map<String, dynamic> json) =>
      _$SendTextMessageFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SendTextMessageToJson(this);

  ///
  SendTextMessage({
    required super.senderId,
    required super.receiverId,
    super.keyName,
    super.keyValue,
    super.quoteMessageId,
    required super.content,
    required super.sessionUnitId,
    super.ignoreConnections,
  });
}
