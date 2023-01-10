import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

import 'send_message.dart';

part 'send_image_message.g.dart';

@JsonSerializable()
class SendImageMessage extends SendMessage<ImageContentDto> {
  ///
  @override
  String get apiUrl => '/api/app/message/send-image-message';

  ///FromJson
  factory SendImageMessage.fromJson(Map<String, dynamic> json) =>
      _$SendImageMessageFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SendImageMessageToJson(this);

  ///
  SendImageMessage({
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
