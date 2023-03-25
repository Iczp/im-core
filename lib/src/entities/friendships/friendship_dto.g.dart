// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friendship_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FriendshipDto _$FriendshipDtoFromJson(Map<String, dynamic> json) =>
    FriendshipDto(
      id: json['id'] as String,
      ownerId: json['ownerId'] as int,
      destinationId: json['destinationId'] as int?,
      destination: json['destination'] == null
          ? null
          : ChatObject.fromJson(json['destination'] as Map<String, dynamic>),
      tagList: (json['tagList'] as List<dynamic>?)
              ?.map((e) => FriendshipTagDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FriendshipDtoToJson(FriendshipDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'destinationId': instance.destinationId,
      'tagList': instance.tagList,
      'destination': instance.destination,
    };
