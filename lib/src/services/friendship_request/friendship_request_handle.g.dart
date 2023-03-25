// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friendship_request_handle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FriendshipRequestHandle _$FriendshipRequestHandleFromJson(
        Map<String, dynamic> json) =>
    FriendshipRequestHandle(
      json['friendshipRequestId'] as String?,
      json['isAgreed'] as bool,
      json['handleMessage'] as String?,
    );

Map<String, dynamic> _$FriendshipRequestHandleToJson(
        FriendshipRequestHandle instance) =>
    <String, dynamic>{
      'friendshipRequestId': instance.friendshipRequestId,
      'isAgreed': instance.isAgreed,
      'handleMessage': instance.handleMessage,
    };
