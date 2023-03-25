import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

import 'send_message.dart';

part 'send_cmd_message.g.dart';

@JsonSerializable()
class SendCmdMessage extends SendMessage<CmdContentDto> {
  ///
  @override
  String get apiUrl => '/api/app/message/send-cmd-message';

  ///FromJson
  factory SendCmdMessage.fromJson(Map<String, dynamic> json) =>
      _$SendCmdMessageFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SendCmdMessageToJson(this);

  ///
  SendCmdMessage({
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
