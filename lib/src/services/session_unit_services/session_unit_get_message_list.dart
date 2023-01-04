// import 'package:json_annotation/json_annotation.dart';

import 'package:im_core/im_core.dart';
import 'package:json_annotation/json_annotation.dart';

import '../base_dtos/paged_output.dart';
import '../request_get_list.dart';

part 'session_unit_get_message_list.g.dart';

@JsonSerializable()
class SessionUnitGetMessageList extends RequestGetList<PagedOuput<MessageDto>> {
  @override
  String get apiUrl => '/api/app/session-unit/$id/message-list';

  ///
  SessionUnitGetMessageList({
    this.id,
    this.senderId,
    this.messageType,
    this.isRemind = false,
    this.minAutoId,
    this.maxAutoId,
    super.maxResultCount = 10,
    super.skipCount = 0,
    super.sorting,
    super.keyword,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  })  : assert(skipCount >= 0),
        assert(maxResultCount > 0 && maxResultCount < 1000);

  ///

  final String? id;

  ///
  final String? senderId;

  ///
  final MessageTypeEnum? messageType;

  ///
  final bool isRemind;

  ///
  final int? minAutoId;

  ///
  final int? maxAutoId;

  ///FromJson
  factory SessionUnitGetMessageList.fromJson(Map<String, dynamic> json) =>
      _$SessionUnitGetMessageListFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SessionUnitGetMessageListToJson(this);

  @override
  Future<PagedOuput<MessageDto>> sendAsync() async {
    var res = await requestAsync();
    return PagedOuput<MessageDto>(
      totalCount: getTotalCount(res.data),
      items: getItems(res.data).map((x) => MessageDto.fromJson(x)).toList(),
    );
  }
}
