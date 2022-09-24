import '../../enums/message_type_enum.dart';

///消息内容
abstract class MessageContent {
  ///
  final String? id;

  ///
  MessageContent({
    this.id,
  });

  ///
  //@mustCallSuper
  MessageTypeEnum get messageType;
}
