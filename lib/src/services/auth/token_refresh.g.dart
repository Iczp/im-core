// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_refresh.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenRefresh _$TokenRefreshFromJson(Map<String, dynamic> json) => TokenRefresh(
      refreshToken: json['refresh_token'] as String,
      grantType: json['grant_type'] as String? ?? "refresh_token",
      clientId: json['client_id'] as String,
      clientSecret: json['client_secret'] as String?,
    );

Map<String, dynamic> _$TokenRefreshToJson(TokenRefresh instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
      'refresh_token': instance.refreshToken,
      'grant_type': instance.grantType,
    };
