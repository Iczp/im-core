import 'package:im_core/im_core.dart';

///
extension MessageDtoExtension on MessageDto {
  ///
  T as<T>() {
    return this as T;
  }

  ///
  T getContent<T>() {
    return content as T;
  }
}
