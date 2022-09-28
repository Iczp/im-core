import 'package:json_annotation/json_annotation.dart';

import '../../enums.dart';
import '../../entities/message_contents/message_content.dart';

part 'link_content_dto.g.dart';

/// 连接
@JsonSerializable()
class LinkContentDto extends MessageContent {
  ///
  LinkContentDto({
    super.id,
    required this.url,
    required this.title,
    this.description,
    this.image,
    this.issuerName,
    this.issuerIcon,
  });

  ///
  final String url;

  ///
  final String title;

  ///
  final String? description;

  ///
  final String? image;

  ///
  final String? issuerName;

  ///
  final String? issuerIcon;

  ///
  @override
  MessageTypeEnum get messageType => MessageTypeEnum.link;

  ///FromJson
  factory LinkContentDto.fromJson(Map<String, dynamic> json) =>
      _$LinkContentDtoFromJson(json);

  ///ToJson
  Map<String, dynamic> toJson() => _$LinkContentDtoToJson(this);

  // ///
  // factory LinkContentDto.fromJson(Map<String, dynamic> json) => LinkContentDto(
  //       id: json['id'],
  //       url: json['url'],
  //       title: json['title'],
  //       image: json['image'],
  //       description: json['description'],
  //       issuerName: json['issuerName'],
  //       issuerIcon: json['issuerIcon'],
  //     );

  // ///
  // Map<String, dynamic> toJson() => <String, dynamic>{
  //       'id': id,
  //       'url': url,
  //       'title': title,
  //       'image': image,
  //       'description': description,
  //       'issuerName': issuerName,
  //       'issuerIcon': issuerIcon,
  //     };
}
