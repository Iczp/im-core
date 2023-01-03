// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionUnit _$SessionUnitFromJson(Map<String, dynamic> json) => SessionUnit(
      id: json['id'] as String,
      sessionId: json['sessionId'] as String,
      ownerId: json['ownerId'] as String,
      destination: json['destination'] == null
          ? null
          : ChatObject.fromJson(json['destination'] as Map<String, dynamic>),
      lastMessage: json['lastMessage'] == null
          ? null
          : MessageDto<dynamic>.fromJson(
              json['lastMessage'] as Map<String, dynamic>),
      badge: json['badge'] as int?,
      reminderAllCount: json['reminderAllCount'] as int?,
      reminderMeCount: json['reminderMeCount'] as int?,
      sorting: json['sorting'] as int?,
      readedMessageAutoId: json['readedMessageAutoId'] as int?,
      removeTime: json['removeTime'] == null
          ? null
          : DateTime.parse(json['removeTime'] as String),
      clearTime: json['clearTime'] == null
          ? null
          : DateTime.parse(json['clearTime'] as String),
    )
      ..title = json['title'] as String?
      ..description = json['description'] as String?;

Map<String, dynamic> _$SessionUnitToJson(SessionUnit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sessionId': instance.sessionId,
      'ownerId': instance.ownerId,
      'destination': instance.destination,
      'lastMessage': instance.lastMessage,
      'badge': instance.badge,
      'reminderAllCount': instance.reminderAllCount,
      'reminderMeCount': instance.reminderMeCount,
      'sorting': instance.sorting,
      'title': instance.title,
      'description': instance.description,
      'readedMessageAutoId': instance.readedMessageAutoId,
      'removeTime': instance.removeTime?.toIso8601String(),
      'clearTime': instance.clearTime?.toIso8601String(),
    };