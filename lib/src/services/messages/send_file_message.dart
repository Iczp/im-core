import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

import 'send_message.dart';

part 'send_file_message.g.dart';

@JsonSerializable()
class SendFileMessage extends SendMessage<FileContentDto> {
  ///
  @override
  String get apiUrl => '/api/app/message/send-file-message';

  ///FromJson
  factory SendFileMessage.fromJson(Map<String, dynamic> json) =>
      _$SendFileMessageFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SendFileMessageToJson(this);

  ///
  SendFileMessage({
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
