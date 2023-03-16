// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchToken _$FetchTokenFromJson(Map<String, dynamic> json) => FetchToken(
      username: json['username'] as String,
      password: json['password'] as String,
      scope: json['scope'] as String,
      grantType: json['grant_type'] as String? ?? "password",
      clientId: json['client_id'] as String,
      clientSecret: json['client_secret'] as String?,
    );

Map<String, dynamic> _$FetchTokenToJson(FetchToken instance) =>
    <String, dynamic>{
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
      'username': instance.username,
      'password': instance.password,
      'scope': instance.scope,
      'grant_type': instance.grantType,
    };
