// 消息类型
import 'package:json_annotation/json_annotation.dart';

enum MessageTypeEnum {
  /// 文本类型
  @JsonValue(0)
  text, // = 0,

  /// 系统命令消息
  @JsonValue(1)
  cmd, // = 1,

  /// 图片类型
  @JsonValue(2)
  image, // = 2,

  /// 语音类型
  @JsonValue(3)
  sound, // = 3,

  /// 视频类型
  @JsonValue(4)
  video, // = 4,

  /// 链接类型
  @JsonValue(5)
  file, // = 5,

  /// 工作流类型
  @JsonValue(6)
  link, // = 6,

  /// 地理位置
  @JsonValue(7)
  location, // = 7,

  /// 联系人名片
  @JsonValue(8)
  contacts, // = 8,

  /// 红包
  @JsonValue(9)
  redenvelope, // = 9,

  /// html
  @JsonValue(10)
  html, // = 10,

  /// 文章
  @JsonValue(11)
  article, // = 11,

  /// 聊天历史消息
  @JsonValue(12)
  history, // = 12,

  /// 通知消息（公告，提醒）
  @JsonValue(13)
  notice, // = 13,
}
