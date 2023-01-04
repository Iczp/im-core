import 'package:json_annotation/json_annotation.dart';

part 'id_input.g.dart';

/// IdInput
@JsonSerializable()
class IdInput {
  ///
  IdInput({
    required this.id,
  });

  ///
  final String? id;

  ///FromJson
  factory IdInput.fromJson(Map<String, dynamic> json) =>
      _$IdInputFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$IdInputToJson(this);
}
