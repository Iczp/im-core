import 'package:im_core/enums/enums.dart';

///媒体实体
class MediaInput {
  ///
  const MediaInput({
    required this.mediaId,
    required this.mediaType,
  });

  ///
  const MediaInput.build(this.mediaId, this.mediaType);

  ///媒体类型(人、群、公众号)
  ///
  final MediaTypeEnum mediaType;

  ///媒体Id(人、群、公众号)
  final String mediaId;

  /// '$mediaType.$mediaId'
  String get sessionId => '$mediaType.$mediaId';
}
