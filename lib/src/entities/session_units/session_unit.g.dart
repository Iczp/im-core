// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionUnit _$SessionUnitFromJson(Map<String, dynamic> json) => SessionUnit(
      sessionId: json['sessionId'] as String,
      ownerId: json['ownerId'] as String,
      lastMessage: json['lastMessage'] == null
          ? null
          : MessageDto<dynamic>.fromJson(
              json['lastMessage'] as Map<String, dynamic>),
      badge: json['badge'] as int?,
      reminderAllCount: json['reminderAllCount'] as int?,
      reminderMeCount: json['reminderMeCount'] as int?,
      sorting: json['sorting'] as int?,
    );

Map<String, dynamic> _$SessionUnitToJson(SessionUnit instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
      'ownerId': instance.ownerId,
      'lastMessage': instance.lastMessage,
      'badge': instance.badge,
      'reminderAllCount': instance.reminderAllCount,
      'reminderMeCount': instance.reminderMeCount,
      'sorting': instance.sorting,
    };
