import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

import 'send_message.dart';

part 'send_video_message.g.dart';

@JsonSerializable()
class SendVideoMessage extends SendMessage<VideoContentDto> {
  ///
  @override
  String get apiUrl => '/api/app/message/send-video-message';

  ///FromJson
  factory SendVideoMessage.fromJson(Map<String, dynamic> json) =>
      _$SendVideoMessageFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SendVideoMessageToJson(this);

  ///
  SendVideoMessage({
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
