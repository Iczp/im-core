// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefreshToken _$RefreshTokenFromJson(Map<String, dynamic> json) => RefreshToken(
      refreshToken: json['refresh_token'] as String,
      grantType: json['grant_type'] as String? ?? "refresh_token",
      clientId: json['client_id'] as String,
      clientSecret: json['client_secret'] as String?,
    );

Map<String, dynamic> _$RefreshTokenToJson(RefreshToken instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
      'refresh_token': instance.refreshToken,
      'grant_type': instance.grantType,
    };
