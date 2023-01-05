// 消息类型
enum MessageTypeEnum {
  /// 文本类型
  text, // = 0,

  /// 系统命令消息
  cmd, // = 1,

  /// 图片类型
  image, // = 2,

  /// 语音类型
  sound, // = 3,

  /// 视频类型
  video, // = 4,

  /// 链接类型

  file, // = 5,

  /// 工作流类型
  link, // = 6,

  /// 地理位置
  location, // = 7,

  /// 联系人名片
  contacts, // = 8,

  /// 红包
  redenvelope, // = 9,

  /// html
  html, // = 10,

  /// 文章
  article, // = 11,

  /// 聊天历史消息
  history, // = 12,

  /// 通知消息（公告，提醒）
  notice, // = 13,
}
