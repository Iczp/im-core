import 'package:im_core/src/entities/rooms/room_dto.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums/room_type_enum.dart';

part 'room_detail_dto.g.dart';

/// 群详细信息
@JsonSerializable()
class RoomDetailDto extends RoomDto {
  RoomDetailDto({
    required super.id,
    required super.name,
    required super.type,
    super.code,
    super.fullName,
    super.originalName,
    super.backgroundImage,
    super.description,
    super.managerUserIdList,
    super.creatorUserId,
    super.creationTime,
    super.memberCount,
  });
}
