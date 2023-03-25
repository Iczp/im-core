import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

import 'send_message.dart';

part 'send_location_message.g.dart';

@JsonSerializable()
class SendLocationMessage extends SendMessage<VideoContentDto> {
  ///
  @override
  String get apiUrl => '/api/app/message/send-location-message';

  ///FromJson
  factory SendLocationMessage.fromJson(Map<String, dynamic> json) =>
      _$SendLocationMessageFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SendLocationMessageToJson(this);

  ///
  SendLocationMessage({
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
