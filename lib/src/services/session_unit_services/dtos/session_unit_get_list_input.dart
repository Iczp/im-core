import 'package:json_annotation/json_annotation.dart';

import '../../base_dtos/paged_input.dart';

part 'session_unit_get_list_input.g.dart';

@JsonSerializable()
class SessionUnitGetListInput extends PagedInput {
  ///
  SessionUnitGetListInput({
    this.ownerId,
    this.destinationId,
    this.destinationObjectType,
    this.isRemind,
    this.isBadge,
    this.minAutoId,
    this.maxAutoId,
  });

  ///
  final String? ownerId;

  ///
  final String? destinationId;

  ///
  final bool? destinationObjectType;

  ///
  final bool? isRemind;

  ///
  final bool? isBadge;

  ///
  final int? minAutoId;

  ///
  final int? maxAutoId;

  ///FromJson
  factory SessionUnitGetListInput.fromJson(Map<String, dynamic> json) =>
      _$SessionUnitGetListInputFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$SessionUnitGetListInputToJson(this);
}
