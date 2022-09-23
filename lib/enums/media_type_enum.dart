/// 媒体类型  0:未定义, 1:个人, 2:群, 3:订阅号, 4:公众号, 5:部门群, 6:课程群, 7:任务群,8:服务号群组,9:工程项目群,10工程标准群
enum MediaTypeEnum {
  /// 未定义

  //[Description("未定义")]
  undefined, // = 0,

  /// 个人
  //[Description("个人")]
  personal, // = 1,

  /// 普通群

  //[Description("普通群")]
  room, // = 2,

  /// 订阅号

  //[Description("订阅号")]
  subscription, // = 3,

  /// 公众号

  //[Description("公众号")]
  offical, // = 4,

  /// 部门群

  //[Description("部门群")]
  roomofdepartment, // = 5,

  /// 课程群

  //[Description("课程群")]
  roomOfCourse, // = 6,

  /// 任务群

  //[Description("任务群")]
  roomOfTask, // = 7,

  /// 服务号群组

  //[Description("服务号群组")]
  officalGroup, // = 8,

  /// 工程项目群

  //[Description("工程项目群")]
  roomOfEngineeringProject, // = 9,

  /// 工程标准群

  //[Description("工程标准群")]
  roomOfEngineeringStandard, // = 10,
}
