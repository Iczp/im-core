import 'package:json_annotation/json_annotation.dart';

import '../../enums/message_type_enum.dart';
import '../../entities/message_contents/message_content.dart';

part 'cmd_content_dto.g.dart';

///文本消息内容
@JsonSerializable()
class CmdContentDto extends MessageContent {
  ///
  CmdContentDto({
    super.id,
    required this.cmd,
    required this.text,
    this.url,
  });

  /// 执行的命令
  final String cmd;

  /// 文本内容
  final String text;

  /// 文本内容
  final String? url;

  ///
  @override
  MessageTypeEnum get messageType => MessageTypeEnum.text;

  ///FromJson
  factory CmdContentDto.fromJson(Map<String, dynamic> json) =>
      _$CmdContentDtoFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$CmdContentDtoToJson(this);

  // ///
  // factory CmdContentDto.fromJson(Map<String, dynamic> json) => CmdContentDto(
  //       id: json['id'],
  //       cmd: json['cmd'],
  //       text: json['text'],
  //       url: json['url'],
  //     );

  // ///
  // Map<String, dynamic> toJson() => <String, dynamic>{
  //       'id': id,
  //       'cmd': cmd,
  //       'text': text,
  //       'url': url,
  //     };
}
