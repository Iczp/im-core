// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_content_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryContentInput _$HistoryContentInputFromJson(Map<String, dynamic> json) =>
    HistoryContentInput(
      messageIdList: (json['messageIdList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$HistoryContentInputToJson(
        HistoryContentInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'messageIdList': instance.messageIdList,
    };
