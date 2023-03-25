// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friendship_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FriendshipRequestDto _$FriendshipRequestDtoFromJson(
        Map<String, dynamic> json) =>
    FriendshipRequestDto(
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

Map<String, dynamic> _$FriendshipRequestDtoToJson(
        FriendshipRequestDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'destinationId': instance.destinationId,
      'isHandled': instance.isHandled,
      'isAgreed': instance.isAgreed,
      'message': instance.message,
      'destination': instance.destination,
    };
