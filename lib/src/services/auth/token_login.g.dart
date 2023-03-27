// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenLogin _$TokenLoginFromJson(Map<String, dynamic> json) => TokenLogin(
      username: json['username'] as String,
      password: json['password'] as String,
      scope: json['scope'] as String,
      grantType: json['grant_type'] as String? ?? "password",
      clientId: json['client_id'] as String,
      clientSecret: json['client_secret'] as String?,
    );

Map<String, dynamic> _$TokenLoginToJson(TokenLogin instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
      'username': instance.username,
      'password': instance.password,
      'scope': instance.scope,
      'grant_type': instance.grantType,
    };
