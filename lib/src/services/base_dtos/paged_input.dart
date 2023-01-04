import 'package:json_annotation/json_annotation.dart';

part 'paged_input.g.dart';

/// paged request input dto
@JsonSerializable()
class PagedInput {
  ///
  PagedInput({
    this.maxResultCount = 10,
    this.skipCount = 0,
    this.sorting,
    this.keyword,
  });

  ///
  int maxResultCount;

  ///
  int skipCount;

  ///
  String? sorting;

  ///
  String? keyword;

  ///FromJson
  factory PagedInput.fromJson(Map<String, dynamic> json) =>
      _$PagedInputFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$PagedInputToJson(this);
}
