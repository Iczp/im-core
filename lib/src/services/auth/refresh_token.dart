import 'package:json_annotation/json_annotation.dart';

import 'token_base.dart';
part 'refresh_token.g.dart';

@JsonSerializable()
class RefreshToken extends TokenBase {
  ///
  RefreshToken({
    required this.refreshToken,
    this.grantType = "refresh_token",
    required super.clientId,
    required super.clientSecret,
  });

  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @JsonKey(name: 'grant_type')
  @override
  final String grantType;

  ///FromJson
  factory RefreshToken.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$RefreshTokenToJson(this);
}
