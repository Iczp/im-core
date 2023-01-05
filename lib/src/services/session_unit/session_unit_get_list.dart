import 'package:json_annotation/json_annotation.dart';

import '../../entities/session_units/session_unit.dart';
import '../../enums/chat_object_types_enum.dart';
import '../base_dtos/paged_output.dart';
import '../request_get_list.dart';

part 'session_unit_get_list.g.dart';

@JsonSerializable()
class SessionUnitGetList extends RequestGetList<PagedOuput<SessionUnit>> {
  @override
  String get apiUrl => '/api/app/session-unit';

  ///
  SessionUnitGetList({
    this.ownerId,
    this.destinationId,
    this.destinationObjectType,
    this.isRemind = false,
    this.isBadge = false,
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

  String? ownerId;

  ///
  String? destinationId;

  ///
  ChatObjectTypesEnum? destinationObjectType;

  ///
  bool isRemind;

  ///
  bool isBadge;

  ///
  int? minAutoId;

  ///
  int? maxAutoId;

  ///FromJson
  factory SessionUnitGetList.fromJson(Map<String, dynamic> json) =>
      _$SessionUnitGetListFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SessionUnitGetListToJson(this);

  @override
  Future<PagedOuput<SessionUnit>> submit() async {
    var res = await request();
    return PagedOuput<SessionUnit>(
      totalCount: getTotalCount(res.data),
      items: getItems(res.data).map((x) => SessionUnit.fromJson(x)).toList(),
    );
  }
}
