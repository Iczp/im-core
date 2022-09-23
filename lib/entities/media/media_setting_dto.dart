import 'package:im_core/entities/id_input.dart';
import 'package:im_core/enums/enums.dart';

import 'meida_input.dart';

///
class MediaSettingDto extends IdInput<String?> {
  ///
  MediaSettingDto({
    required this.mediaType,
    required this.mediaId,
    this.rename,
    this.isCantacts,
    this.remarks,
    this.sortingNumber,
    this.isImmersed,
    this.isShowMemberName,
    this.isShowRead,
    this.backgroundImage,
  });

  ///
  String? get sessionId =>
      MediaInput(mediaType: mediaType, mediaId: mediaId).sessionId;

  /// 消息媒体类型
  /// 0:未定义, 1:个人消息, 2:群消息, 3:订阅号消息, 4:公众号消息
  final MediaTypeEnum mediaType;

  /// 主键
  final String mediaId;

  /// 备注
  final String? rename;

  /// 是否保存通讯录
  final bool? isCantacts;

  /// 备注其他
  final String? remarks;

  /// 排序,消息置顶时间，不置顶则为空
  final int? sortingNumber;

  /// 消息免打扰，默认为 false
  final bool? isImmersed;

  /// 是否显示成员名称
  final bool? isShowMemberName;

  /// 是否显示已读
  final bool? isShowRead;

  /// 聊天背景，默认为 null
  final String? backgroundImage;

  ///
  factory MediaSettingDto.fromJson(Map<String, dynamic> json) =>
      MediaSettingDto(
        mediaType: json['mediaType'],
        mediaId: json['mediaId'],
        rename: json['rename'],
        isCantacts: json['isCantacts'],
        remarks: json['remarks'],
        sortingNumber: json['sortingNumber'],
        isImmersed: json['isImmersed'],
        isShowMemberName: json['isShowMemberName'],
        isShowRead: json['isShowRead'],
        backgroundImage: json['backgroundImage'],
      );

  ///
  Map<String, dynamic> toJson() => <String, dynamic>{
        'mediaType': mediaType,
        'mediaId': mediaId,
        'rename': rename,
        'isCantacts': isCantacts,
        'remarks': remarks,
        'sortingNumber': sortingNumber,
        'isImmersed': isImmersed,
        'isShowMemberName': isShowMemberName,
        'isShowRead': isShowRead,
        'backgroundImage': backgroundImage,
      };
}
