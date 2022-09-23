// 语音消息内容
import 'package:im_core/enums/enums.dart';
import 'package:im_core/entities/message_content/message_content.dart';

class ImageContentDto extends MessageContent {
  ///
  @override
  MessageTypeEnum get messageType => MessageTypeEnum.image;

  ///
  ImageContentDto({
    super.id,
    this.text,
    this.path,
    this.url,
    this.actionUrl,
    this.thumbnailUrl,
    this.thumbnailActionUrl,
    this.qrientation,
    required this.width,
    required this.height,
    required this.size,
    this.qrcode,
  }) : assert(url == null || path == null, 'url or path is null');

  // 文本内容
  final String? text;

  ///文件网络地址
  final String? url;

  ///本地地址
  final String? path;

  ///
  final String? actionUrl;

  /// 缩略图地址
  final String? thumbnailUrl;

  /// 缩略图MinIO控制器URL
  final String? thumbnailActionUrl;

  /// 拍照时设备方向信息 http://www.html5plus.org/doc/zh_cn/io.html#plus.io.ImageInfo
  final String? qrientation;

  /// Width
  final int width;

  /// Height
  final int height;

  /// Size
  final int size;

  /// 二维码信息
  final String? qrcode;

  ///
  factory ImageContentDto.fromJson(Map<String, dynamic> json) =>
      ImageContentDto(
        id: json['id'],
        text: json['text'],
        url: json['url'],
        path: json['path'],
        actionUrl: json['actionUrl'],
        thumbnailUrl: json['thumbnailUrl'],
        thumbnailActionUrl: json['thumbnailActionUrl'],
        qrientation: json['qrientation'],
        width: json['width'],
        height: json['height'],
        size: json['size'],
        qrcode: json['qrcode'],
      );

  ///
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'text': text,
        'url': url,
        'path': path,
        'actionUrl': actionUrl,
        'thumbnailUrl': thumbnailUrl,
        'thumbnailActionUrl': thumbnailActionUrl,
        'qrientation': qrientation,
        'width': width,
        'height': height,
        'size': size,
        'qrcode': qrcode,
      };
}
