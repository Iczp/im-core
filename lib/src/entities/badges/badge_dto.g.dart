// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BadgeDto _$BadgeDtoFromJson(Map<String, dynamic> json) => BadgeDto(
      chatObjectId: json['chatObjectId'] as int,
      badge: json['badge'] as int,
      appUserId: json['appUserId'] as String?,
    );

Map<String, dynamic> _$BadgeDtoToJson(BadgeDto instance) => <String, dynamic>{
      'appUserId': instance.appUserId,
      'chatObjectId': instance.chatObjectId,
      'badge': instance.badge,
    };
