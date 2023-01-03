import 'package:json_annotation/json_annotation.dart';

import '../../enums/chat_object_types_enum.dart';

part 'chat_object.g.dart';

/// <summary>
/// 用户
/// </summary>
///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()
class ChatObject {
  ///
  ChatObject({
    required this.id,
    required this.name,
    this.portrait,
    this.code,
    this.chatObjectType,
  });

  final String id;

  final String name;

  final String? portrait;

  final String? code;

  final ChatObjectTypesEnum? chatObjectType;

  ///FromJson
  factory ChatObject.fromJson(Map<String, dynamic> json) =>
      _$ChatObjectFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$ChatObjectToJson(this);
}
