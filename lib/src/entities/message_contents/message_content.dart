import '../../enums/message_type_enum.dart';
import '../entity.dart';

///消息内容
abstract class MessageContent extends Entity {
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
