import 'package:im_core/entities.dart';
import 'package:im_core/src/services/request_post.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_object_update.g.dart';

@JsonSerializable()
class ChatObjectGetUpdate extends RequestPost<ChatObject> {
  ///
  @override
  String get apiUrl => '/api/app/chat-object';

  ///
  @override
  Map<String, dynamic>? getQueryParameters() => {'id': id};

  ///
  @override
  dynamic getPostData() => toJson();

  ///
  ChatObjectGetUpdate({
    required this.id,
    this.parentId,
    required this.name,
    this.code,
    this.description,
    this.sorting = 0,
  });

  ///FromJson
  factory ChatObjectGetUpdate.fromJson(Map<String, dynamic> json) =>
      _$ChatObjectGetUpdateFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$ChatObjectGetUpdateToJson(this);

  @override
  ChatObject mapToResult(dynamic data) {
    return ChatObject.fromJson(data);
  }

  @JsonKey(includeToJson: false)
  final int id;

  final int? parentId;

  final String name;

  final String? code;

  final String? description;

  final int sorting;
}
