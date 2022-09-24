import '../id_input.dart';
import '../entities/media/meida_input.dart';
import '../enums/media_type_enum.dart';

///
class ReadedDto extends IdInput<String?> {
  ///
  ReadedDto({
    required this.mediaType,
    required this.mediaId,
    this.ownerUserId,
    this.logId,
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
  final String? ownerUserId;

  ///
  final double? logId;

  ///
  factory ReadedDto.fromJson(Map<String, dynamic> json) => ReadedDto(
        mediaType: json['mediaType'],
        mediaId: json['mediaId'],
        ownerUserId: json['ownerUserId'],
        logId: json['logId'],
      );

  ///
  Map<String, dynamic> toJson() => <String, dynamic>{
        'mediaType': mediaType,
        'mediaId': mediaId,
        'ownerUserId': ownerUserId,
        'logId': logId,
      };
}
