import 'package:im_core/src/entities/entity.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums/chat_object_types_enum.dart';

part 'chat_object.g.dart';

@JsonSerializable()
class ChatObject extends Entity with IFromJson<ChatObject> {
  ///
  ChatObject({
    this.id,
    this.name,
    this.portrait,
    this.code,
    this.chatObjectType,
  });

  final String? id;

  final String? name;

  final String? portrait;

  final String? code;

  final ChatObjectTypesEnum? chatObjectType;

  ///FromJson
  factory ChatObject.fromJson(Map<String, dynamic> json) =>
      _$ChatObjectFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$ChatObjectToJson(this);

  @override
  fromJson(Map<String, dynamic> json) => ChatObject.fromJson(json);
}

abstract class IFromJson<T> {
  fromJson(Map<String, dynamic> json);
}
