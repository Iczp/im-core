import 'package:im_core/entities.dart';
import 'package:json_annotation/json_annotation.dart';
import '../request_get.dart';
part 'chat_object_get_by_code.g.dart';

@JsonSerializable()
class ChatObjectGetByCode extends RequestGet<ChatObject> {
  ///
  @override
  String get apiUrl => '/api/app/chat-object/by-code';

  ///
  @override
  Map<String, dynamic>? getQueryParameters() => {'code': code};

  ///
  ChatObjectGetByCode({
    required this.code,
  });

  ///FromJson
  factory ChatObjectGetByCode.fromJson(Map<String, dynamic> json) =>
      _$ChatObjectGetByCodeFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$ChatObjectGetByCodeToJson(this);

  @override
  ChatObject mapToResult(dynamic data) {
    return ChatObject.fromJson(data);
  }

  final String code;
}
