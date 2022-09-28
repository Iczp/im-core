import '../../enums/media_type_enum.dart';

///媒体实体
class MediaDto {
  ///
  const MediaDto({
    required this.id,
    required this.name,
  });

  ///媒体Id
  final String id;

  ///媒体名称
  final String name;

  /// 头像
  final String? portrait;

  ///媒体类型
  MediaTypeEnum get meidaType => MediaTypeEnum.undefined;
}
