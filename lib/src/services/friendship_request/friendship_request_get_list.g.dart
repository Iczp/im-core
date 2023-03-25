// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friendship_request_get_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FriendshipRequestGetList _$FriendshipRequestGetListFromJson(
        Map<String, dynamic> json) =>
    FriendshipRequestGetList(
      maxResultCount: json['maxResultCount'] as int? ?? 10,
      skipCount: json['skipCount'] as int? ?? 0,
      sorting: json['sorting'] as String?,
      keyword: json['keyword'] as String?,
    );

Map<String, dynamic> _$FriendshipRequestGetListToJson(
        FriendshipRequestGetList instance) =>
    <String, dynamic>{
      'maxResultCount': instance.maxResultCount,
      'skipCount': instance.skipCount,
      'sorting': instance.sorting,
      'keyword': instance.keyword,
    };
