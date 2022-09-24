import 'package:im_core/src/enums.dart';
import 'package:im_core/src/entities/message_contents/message_content.dart';

/// 位置消息
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
  MessageTypeEnum get messageType => MessageTypeEnum.sound;

  ///
  factory LocationContentDto.fromJson(Map<String, dynamic> json) =>
      LocationContentDto(
        id: json['id'],
        provider: json['provider'],
        name: json['name'],
        address: json['address'],
        image: json['image'],
        latitude: json['latitude'],
        longitude: json['longitude'],
      );

  ///
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'provider': provider,
        'name': name,
        'address': address,
        'image': image,
        'latitude': latitude,
        'longitude': longitude,
      };
}
