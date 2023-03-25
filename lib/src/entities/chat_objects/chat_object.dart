import 'dart:convert';

import 'package:im_core/src/entities/entity.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums/chat_object_types_enum.dart';

part 'chat_object.g.dart';

@JsonSerializable()
class ChatObject extends Entity {
  ///
  ChatObject({
    required this.id,
    this.name,
    this.portrait,
    this.code,
    this.objectType,
    this.appUserId,
    this.depth = 0,
    this.fullPath,
    this.fullPathName,
  });

  final int id;

  final String? name;

  final String? portrait;

  final String? code;

  final String? appUserId;

  final ChatObjectTypesEnum? objectType;

  final int depth;

  final String? fullPath;

  final String? fullPathName;

  ///FromJson
  factory ChatObject.fromJson(Map<String, dynamic> json) =>
      _$ChatObjectFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$ChatObjectToJson(this);

  @override
  ChatObject mapToEntity(Map<String, dynamic> json) =>
      _$ChatObjectFromJson(json);

  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
