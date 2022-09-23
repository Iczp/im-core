// 消息类型
enum MessageTypeEnum {
  /// 其他未知

  //[Description("其他未知")]
  undefined, // = 0,

  /// 文本类型

  //[Description("文本")]
  text, // = 1,

  /// 图片类型

  //[Description("图片")]
  image, // = 2,

  /// 语音类型

  //[Description("语音")]
  sound, // = 3,

  /// 视频类型

  //[Description("视频")]
  video, // = 4,

  /// 链接类型

  //[Description("链接")]
  link, // = 5,

  /// 工作流类型

  //[Description("工作流")]
  wordflow, // = 6,

  /// 地理位置

  //[Description("地理位置")]
  location, // = 7,

  /// 联系人名片

  //[Description("联系人名片")]
  contacts, // = 8,

  /// 系统命令消息

  //[Description("系统命令消息")]
  cmd, // = 9,

  /// 课程

  //[Description("课程")]
  course, // = 10,

  /// 红包

  //[Description("红包")]
  redenvelope, // = 11,

  /// html

  //[Description("html")]
  html, // = 12,

  /// 文章

  //[Description("文章")]
  article, // = 13,

  /// 聊天历史消息

  //[Description("聊天历史消息")]
  history, // = 14,

  /// 文件消息

  //[Description("文件消息")]
  file, // = 15,

  /// 通知消息（公告，提醒）

  //[Description("通知消息")]
  notice, // = 16,
}
