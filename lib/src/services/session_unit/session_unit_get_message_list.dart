// import 'package:json_annotation/json_annotation.dart';

import 'package:im_core/src/extensions/map_extension.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../entities/messages/message_dto.dart';
import '../../enums/message_type_enum.dart';
import '../base_dtos/paged_output.dart';
import '../request_get_list.dart';

part 'session_unit_get_message_list.g.dart';

@JsonSerializable()
class SessionUnitGetMessageList extends RequestGetList<PagedOuput<MessageDto>> {
  ///
  @override
  String get apiUrl => '/api/app/session-unit/$id/message-list';

  ///
  SessionUnitGetMessageList({
    required this.id,
    this.senderId,
    this.messageType,
    this.isRemind,
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

  final String id;

  final int? senderId;

  final MessageTypeEnum? messageType;

  @JsonKey(defaultValue: null)
  final bool? isRemind;

  final int? minAutoId;

  final int? maxAutoId;

  ///FromJson
  factory SessionUnitGetMessageList.fromJson(Map<String, dynamic> json) =>
      _$SessionUnitGetMessageListFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SessionUnitGetMessageListToJson(this);

  ///
  @override
  Map<String, dynamic>? getQueryParameters() => toJson().removeKey('id');

  ///
  @override
  PagedOuput<MessageDto> mapToResult(dynamic data) {
    return PagedOuput<MessageDto>(
      totalCount: getTotalCount(data),
      items: getItems(data).map((x) => MessageDto.fromJson(x)).toList(),
    );
  }
}
