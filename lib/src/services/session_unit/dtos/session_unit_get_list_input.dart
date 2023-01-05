import 'package:json_annotation/json_annotation.dart';

import '../../../enums/chat_object_types_enum.dart';
import '../../base_dtos/paged_input.dart';

part 'session_unit_get_list_input.g.dart';

@JsonSerializable()
class SessionUnitGetListInput extends PagedInput {
  ///
  SessionUnitGetListInput({
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
  });

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
  @override
  factory SessionUnitGetListInput.fromJson(Map<String, dynamic> json) =>
      _$SessionUnitGetListInputFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$SessionUnitGetListInputToJson(this);
}
