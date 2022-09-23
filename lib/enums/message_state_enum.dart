/// 消息状态
enum MessageStateEnum {
  /// 0 未知
  undefined,

  /// 成功 1
  success,

  /// 发送中 2
  pending,

  /// 失败 3
  fail,

  /// 压缩 4
  compress,

  /// 下载 5
  downLoading,

  /// 上传 6
  upLoading,
}
