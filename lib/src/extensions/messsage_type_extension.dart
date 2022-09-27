import 'package:im_core/im_core.dart';

///
extension MessageTypeExtension on MessageTypeEnum {
  ///
  String toText() {
    switch (this) {
      // case MessageTypeEnum.text:
      //   return '';
      case MessageTypeEnum.image:
        return '[图片]';
      case MessageTypeEnum.sound:
        return '[语音]';
      case MessageTypeEnum.video:
        return '[文件]';
      case MessageTypeEnum.file:
        return '[文件]';
      case MessageTypeEnum.history:
        return '[聊天记录]';
      case MessageTypeEnum.contacts:
        return '[联系人]';
      case MessageTypeEnum.link:
        return '[链接]';
      default:
        return '';
    }
  }
}
