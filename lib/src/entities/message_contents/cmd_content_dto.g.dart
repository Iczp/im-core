// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cmd_content_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CmdContentDto _$CmdContentDtoFromJson(Map<String, dynamic> json) =>
    CmdContentDto(
      id: json['id'] as String?,
      cmd: json['cmd'] as String,
      text: json['text'] as String,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$CmdContentDtoToJson(CmdContentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cmd': instance.cmd,
      'text': instance.text,
      'url': instance.url,
    };
