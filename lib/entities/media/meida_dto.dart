import 'package:im_core/enums/media_type_enum.dart';

///媒体实体
class MediaDto {
  ///媒体Id
  final String id;

  ///媒体名称
  final String name;

  ///媒体类型
  MediaTypeEnum get meidaType => MediaTypeEnum.undefined;

  ///
  const MediaDto({
    required this.id,
    required this.name,
  });
}
