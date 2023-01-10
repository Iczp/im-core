import 'package:im_core/enums.dart';
import 'package:json_annotation/json_annotation.dart';

import '../message_content.dart';

part 'history_content_input.g.dart';

///文本消息内容
@JsonSerializable()
class HistoryContentInput extends MessageContent {
  ///
  HistoryContentInput({
    required this.messageIdList,
    super.id,
  });

  final List<String> messageIdList;

  ///
  @override
  MessageTypeEnum get messageType => MessageTypeEnum.history;

  ///FromJson
  factory HistoryContentInput.fromJson(Map<String, dynamic> json) =>
      _$HistoryContentInputFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$HistoryContentInputToJson(this);

  @override
  mapToEntity(Map<String, dynamic> json) => _$HistoryContentInputFromJson(json);
}
