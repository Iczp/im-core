import 'package:json_annotation/json_annotation.dart';

/// 模式
enum JoinWaysEnum {
  ///常规方式
  @JsonValue(0)
  normal,

  ///朋友邀请
  @JsonValue(1)
  invitation,

  ///创建人邀请
  @JsonValue(2)
  creator,

  ///扫码
  @JsonValue(3)
  scan,

  ///系统邀请
  @JsonValue(4)
  system,

  ///自动加入
  @JsonValue(5)
  autoJoin,
}
