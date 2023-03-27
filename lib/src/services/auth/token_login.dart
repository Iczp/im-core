import 'package:json_annotation/json_annotation.dart';

import 'token_base.dart';
part 'token_login.g.dart';

@JsonSerializable()
class TokenLogin extends TokenBase {
  ///
  TokenLogin({
    required this.username,
    required this.password,
    required this.scope,
    this.grantType = "password",
    required super.clientId,
    super.clientSecret,
  });

  final String username;

  final String password;

  final String scope;

  @JsonKey(name: 'grant_type')
  @override
  final String grantType;

  ///FromJson
  factory TokenLogin.fromJson(Map<String, dynamic> json) =>
      _$TokenLoginFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$TokenLoginToJson(this);
}
