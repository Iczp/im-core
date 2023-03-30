import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';

part 'session.g.dart';

/// <summary>
/// 用户
/// </summary>
///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()

///
class Session {
  ///
  Session({
    required this.id,
    required this.sessionKey,
    this.messageCount,
    this.tagCount,
    this.roleCount,
    this.owner,
    this.title,
    this.desciption,
  });

  final String id;

  final String sessionKey;

  final ChatObject? owner;

  final int? messageCount;

  final int? tagCount;

  final int? roleCount;

  late String? title;

  late String? desciption;

  ///FromJson
  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$SessionToJson(this);
}
