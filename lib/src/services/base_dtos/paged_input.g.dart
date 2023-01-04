// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedInput _$PagedInputFromJson(Map<String, dynamic> json) => PagedInput(
      maxResultCount: json['maxResultCount'] as int? ?? 10,
      skipCount: json['skipCount'] as int? ?? 0,
      sorting: json['sorting'] as String?,
      keyword: json['keyword'] as String?,
    );

Map<String, dynamic> _$PagedInputToJson(PagedInput instance) =>
    <String, dynamic>{
      'maxResultCount': instance.maxResultCount,
      'skipCount': instance.skipCount,
      'sorting': instance.sorting,
      'keyword': instance.keyword,
    };
