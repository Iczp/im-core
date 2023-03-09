import 'package:json_annotation/json_annotation.dart';

enum ChatObjectTypesEnum {
  /// 匿名
  @JsonValue(0)
  anonymous,

  /// 个人
  @JsonValue(1)
  personal,

  ///群
  @JsonValue(2)
  room,

  /// 服务号
  @JsonValue(3)
  official,

  /// 订阅号
  @JsonValue(4)
  subscription,

  /// 广场
  @JsonValue(5)
  square,

  /// 机器人
  @JsonValue(6)
  robot,

  /// 掌柜
  @JsonValue(7)
  shopKeeper,

  /// 店小二
  @JsonValue(8)
  shopWaiter,

  /// 客户
  @JsonValue(9)
  customer,
}
