import 'package:json_annotation/json_annotation.dart';
import '../../enums/media_type_enum.dart';

///
part 'media_dto.g.dart';

///媒体实体
@JsonSerializable()
class MediaDto {
  ///
  MediaDto({
    required this.id,
    required this.name,
    this.portrait,
  });

  ///媒体Id
  final String id;

  ///媒体名称
  final String name;

  /// 头像
  final String? portrait;

  ///媒体类型
  MediaTypeEnum get meidaType => MediaTypeEnum.undefined;

  /// 本地时间 (该实例的创建时间)
  final DateTime localTime = DateTime.now();

  ///FromJson
  factory MediaDto.fromJson(Map<String, dynamic> json) =>
      _$MediaDtoFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$MediaDtoToJson(this);
}
