import 'package:json_annotation/json_annotation.dart';
import '../../enums/offical_type_enum.dart';
import '../medias/media_dto.dart';

part 'offical_dto.g.dart';

///公众号
@JsonSerializable()
class OfficalDto extends MediaDto {
  ///
  OfficalDto({
    required super.id,
    required super.name,
    required this.type,
    this.account,
    this.backgroundImage,
    this.description,
    this.menusJson,
    this.inputMode,
    this.creationTime,
    this.memberCount,
  });

  /// 公众号类型
  final OfficalTypeEnum type;

  /// 公众号-账号(唯一)
  final String? account;

  /// 聊天背景
  ///

  final String? backgroundImage;

  /// 说明
  final String? description;

  /// 公众号菜单
  final String? menusJson;

  /// 聊天框输入方式：0-输入框，1-菜单，2-输入框和菜单，3-不显示
  final int? inputMode;

  /// 创建人
  final DateTime? creationTime;

  /// 成员数量
  final int? memberCount;

  ///FromJson
  factory OfficalDto.fromJson(Map<String, dynamic> json) =>
      _$OfficalDtoFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$OfficalDtoToJson(this);
}
