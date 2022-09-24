import 'package:im_core/src/enums.dart';
import 'package:im_core/src/entities/message_contents/message_content.dart';

/// 文件消息
class FileContentDto extends MessageContent {
  ///
  FileContentDto({
    super.id,
    this.path,
    this.url,
    this.fileName,
    this.contentLength = 0,
    this.contentType,
    this.actionUrl,
    this.suffix,
  }) : assert(url == null || path == null, 'url or path is null');

  /// 消息类型
  @override
  MessageTypeEnum get messageType => MessageTypeEnum.file;

  /// 本地地址
  final String? path;

  /// 文件网络地址
  final String? url;

  ///文件网络地址
  final String? actionUrl;

  /// 文件名称
  final String? fileName;

  /// 文件大小
  final int contentLength;

  ///ContentType
  final String? contentType;

  /// 文件后缀名
  final String? suffix;

  ///
  factory FileContentDto.fromJson(Map<String, dynamic> json) => FileContentDto(
        id: json['id'],
        path: json['path'],
        url: json['url'],
        fileName: json['fileName'],
        contentLength: json['contentLength'],
        contentType: json['contentType'],
        suffix: json['suffix'],
        actionUrl: json['actionUrl'],
      );

  ///
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'path': path,
        'url': url,
        'fileName': fileName,
        'contentLength': contentLength,
        'contentType': contentType,
        'actionUrl': actionUrl,
        'suffix': suffix,
      };
}
