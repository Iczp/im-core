// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friendship_tag_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FriendshipTagDto _$FriendshipTagDtoFromJson(Map<String, dynamic> json) =>
    FriendshipTagDto(
      id: json['id'] as String,
      ownerId: json['ownerId'] as int,
      destinationId: json['destinationId'] as int?,
      isHandled: json['isHandled'] as bool?,
      isAgreed: json['isAgreed'] as bool?,
      message: json['message'] as String?,
      destination: json['destination'] == null
          ? null
          : ChatObject.fromJson(json['destination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FriendshipTagDtoToJson(FriendshipTagDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'destinationId': instance.destinationId,
      'isHandled': instance.isHandled,
      'isAgreed': instance.isAgreed,
      'message': instance.message,
      'destination': instance.destination,
    };
