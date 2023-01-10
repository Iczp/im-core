import 'package:json_annotation/json_annotation.dart';

import '../../../../enums.dart';
import '../message_content.dart';

part 'location_content_dto.g.dart';

/// 位置消息
@JsonSerializable()
class LocationContentDto extends MessageContent {
  ///
  LocationContentDto({
    super.id,
    this.provider,
    this.name,
    this.address,
    this.image,
    this.latitude = 0,
    this.longitude = 0,
  });

  /// AMap(高德地图)、baidu(百度地图)
  final String? provider;

  /// 位置名称
  final String? name;

  /// 简要说明
  final String? address;

  /// 地图图片
  final String? image;

  /// 坐标 Latitude
  final double latitude;

  /// 坐标 Longitude
  final double longitude;

  ///
  @override
  MessageTypeEnum get messageType => MessageTypeEnum.location;

  ///FromJson
  factory LocationContentDto.fromJson(Map<String, dynamic> json) =>
      _$LocationContentDtoFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$LocationContentDtoToJson(this);

  @override
  mapToEntity(Map<String, dynamic> json) => _$LocationContentDtoFromJson(json);
}
