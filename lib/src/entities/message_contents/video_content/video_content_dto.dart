import 'package:json_annotation/json_annotation.dart';

import '../../../enums.dart';
import '../message_content.dart';

part 'video_content_dto.g.dart';

///视频消息
@JsonSerializable()
class VideoContentDto extends MessageContent {
  ///
  VideoContentDto({
    super.id,
    this.path,
    this.url,
    this.width = 0,
    this.height = 0,
    this.size = 0,
    this.imagePath,
    this.imageUrl,
    this.imageWidth = 0,
    this.imageHeight = 0,
    this.imageSize = 0,
    this.duration = 0,
    this.orientation = 0,
  }) : assert(url == null || path == null, 'url or path is null');

  ///
  @override
  MessageTypeEnum get messageType => MessageTypeEnum.video;

  ///本地地址
  final String? path;

  ///文件网络地址
  final String? url;

  /// 视频封面Width

  final int width;

  /// 视频Height

  final int height;

  /// 视频大小

  final int size;

  ///方向
  final int orientation;

  /// 视频封面(本地)

  final String? imagePath;

  /// 视频封面

  final String? imageUrl;

  /// 视频Width

  final int imageWidth;

  /// Height

  final int imageHeight;

  /// 封面大小

  final int imageSize;

  /// 选定视频的时间长度，单位为 （毫秒）

  final int duration;

  ///FromJson
  factory VideoContentDto.fromJson(Map<String, dynamic> json) =>
      _$VideoContentDtoFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$VideoContentDtoToJson(this);

  // factory VideoContentDto.fromJson(Map<String, dynamic> json) =>
  //     VideoContentDto(
  //       path: json['path'],
  //       url: json['url'],
  //       width: json['width'],
  //       height: json['height'],
  //       size: json['size'],
  //       orientation: json['orientation'],
  //       imagePath: json['imagePath'],
  //       imageUrl: json['imageUrl'],
  //       imageWidth: json['imageWidth'],
  //       imageHeight: json['imageHeight'],
  //       imageSize: json['imageSize'],
  //     );

  // Map<String, dynamic> toJson() => <String, dynamic>{
  //       'path': path,
  //       'url': url,
  //       'width': width,
  //       'height': height,
  //       'size': size,
  //       'orientation': orientation,
  //       'imagePath': imagePath,
  //       'imageUrl': imageUrl,
  //       'imageWidth': imageWidth,
  //       'imageHeight': imageHeight,
  //       'imageSize': imageSize,
  //     };
}
