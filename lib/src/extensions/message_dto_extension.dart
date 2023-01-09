import 'package:im_core/im_core.dart';

///
extension MessageDtoExtension on MessageDto {
  ///
  T as<T>() {
    return this as T;
  }

  ///
  T getContent<T extends IFromJson>() {
    switch (this.messageType) {
      case MessageTypeEnum.text:
      return fromJson()
        break;
    }
    return content as T;
  }
}
