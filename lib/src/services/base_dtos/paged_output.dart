// import 'package:json_annotation/json_annotation.dart';

// part 'paged_output.g.dart';

/// paged result ouput dto
// @JsonSerializable()
class PagedOuput<T> {
  ///
  PagedOuput({
    required this.totalCount,
    required this.items,
  });

  ///
  late final int totalCount;

  ///
  late final List<T> items;

  ///FromJson
  factory PagedOuput.fromJson(Map<String, dynamic> json) => PagedOuput(
        totalCount: json['totalCount'],
        items: json['items'],
      );

  // ///ToJson
  // Map<String, dynamic> toJson() => _$PagedOuputToJson(this);
}
