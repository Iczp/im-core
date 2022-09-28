import 'package:json_annotation/json_annotation.dart';
import '../../enums/room_type_enum.dart';
import '../medias/media_dto.dart';

part 'room_dto.g.dart';

///群
@JsonSerializable()
class RoomDto extends MediaDto {
  ///
  RoomDto({
    required super.id,
    required super.name,
    required this.type,
    this.code,
    this.fullName,
    this.originalName,
    this.backgroundImage,
    this.description,
    this.managerUserIdList,
    this.creatorUserId,
    this.creationTime,
    this.memberCount,
  });

  /// 群类型
  final RoomTypeEnum type;

  /// 群编码（扩展，Type相对应）
  final String? code;

  /// 全称
  final String? fullName;

  /// 原始名称
  final String? originalName;

  /// 聊天背景
  final String? backgroundImage;

  /// 群说明
  final String? description;

  /// 管理员
  final String? managerUserIdList;

  /// 创建人
  final String? creatorUserId;

  /// 创建人
  final DateTime? creationTime;

  /// 成员数量
  final int? memberCount;

  ///FromJson
  factory RoomDto.fromJson(Map<String, dynamic> json) =>
      _$RoomDtoFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$RoomDtoToJson(this);
}
