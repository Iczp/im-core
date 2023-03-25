// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friendship_request_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FriendshipRequestCreate _$FriendshipRequestCreateFromJson(
        Map<String, dynamic> json) =>
    FriendshipRequestCreate(
      ownerId: json['ownerId'] as int?,
      destinationId: json['destinationId'] as int,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$FriendshipRequestCreateToJson(
        FriendshipRequestCreate instance) =>
    <String, dynamic>{
      'ownerId': instance.ownerId,
      'destinationId': instance.destinationId,
      'message': instance.message,
    };
