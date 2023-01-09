import 'package:im_core/im_core.dart';

///
extension MessageDtoExtension on MessageDto {
  ///
  T as<T>() {
    return this as T;
  }

  ///
  T getContent<T extends Entity>() {
    var content = this.content;
    // switch (this.messageType) {
    //   case MessageTypeEnum.text:

    //     break;
    // }
    // return content as T;

    return content is T
        ? this.content
        : (content as T).mapToEntity(this.content);
  }
}
