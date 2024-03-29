import 'package:json_annotation/json_annotation.dart';

import '../../../../enums.dart';
import '../message_content.dart';

part 'contacts_content_dto.g.dart';

///名片
@JsonSerializable()
class ContactsContentDto extends MessageContent {
  ///
  ContactsContentDto({
    super.id,
    required this.mediaId,
    required this.mediaType,
    this.title,
    this.picture,
    this.description,
    this.remark,
  });

  ///
  final String mediaId;

  ///
  final MediaTypeEnum mediaType;

  ///
  final String? title;

  ///
  final String? picture;

  ///
  final String? description;

  ///
  final String? remark;

  ///
  @override
  MessageTypeEnum get messageType => MessageTypeEnum.contacts;

  ///FromJson
  factory ContactsContentDto.fromJson(Map<String, dynamic> json) =>
      _$ContactsContentDtoFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$ContactsContentDtoToJson(this);

  @override
  mapToEntity(Map<String, dynamic> json) => _$ContactsContentDtoFromJson(json);

  // ///
  // factory ContactsContentDto.fromJson(Map<String, dynamic> json) =>
  //     ContactsContentDto(
  //       id: json['id'],
  //       mediaId: json['mediaId'],
  //       mediaType: json['mediaType'],
  //       title: json['title'],
  //       picture: json['picture'],
  //       description: json['description'],
  //       remark: json['remark'],
  //     );

  // ///
  // Map<String, dynamic> toJson() => <String, dynamic>{
  //       'id': id,
  //       'mediaId': mediaId,
  //       'mediaType': mediaType,
  //       'title': title,
  //       'picture': picture,
  //       'description': description,
  //       'remark': remark,
  //     };
}
