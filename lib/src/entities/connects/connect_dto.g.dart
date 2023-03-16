// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connect_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConnectDto _$ConnectDtoFromJson(Map<String, dynamic> json) => ConnectDto(
      webScoketUrl: json['webScoketUrl'] as String,
      pingIntervalSeconds: json['pingIntervalSeconds'] as int? ?? 3,
      timeoutSeconds: json['timeoutSeconds'] as int? ?? 30,
      heartbeatSeconds: json['heartbeatSeconds'] as int? ?? 10,
      expireSeconds: json['expireSeconds'] as int? ?? 60,
    );

Map<String, dynamic> _$ConnectDtoToJson(ConnectDto instance) =>
    <String, dynamic>{
      'webScoketUrl': instance.webScoketUrl,
      'pingIntervalSeconds': instance.pingIntervalSeconds,
      'timeoutSeconds': instance.timeoutSeconds,
      'heartbeatSeconds': instance.heartbeatSeconds,
      'expireSeconds': instance.expireSeconds,
    };
