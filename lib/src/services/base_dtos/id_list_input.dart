import 'package:json_annotation/json_annotation.dart';

part 'id_list_input.g.dart';

/// IdInput
@JsonSerializable()
class IdListInput {
  ///
  IdListInput({
    required this.idList,
  });

  ///
  final List<String> idList;

  ///FromJson
  factory IdListInput.fromJson(Map<String, dynamic> json) =>
      _$IdListInputFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$IdListInputToJson(this);
}
