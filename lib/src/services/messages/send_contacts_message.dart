import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

import 'send_message.dart';

part 'send_contacts_message.g.dart';

@JsonSerializable()
class SendContactsMessage extends SendMessage<ContactsContentDto> {
  ///
  @override
  String get apiUrl => '/api/app/message/send-contacts-message';

  ///FromJson
  factory SendContactsMessage.fromJson(Map<String, dynamic> json) =>
      _$SendContactsMessageFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SendContactsMessageToJson(this);

  ///
  SendContactsMessage({
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
