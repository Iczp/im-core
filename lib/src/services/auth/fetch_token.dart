import 'package:json_annotation/json_annotation.dart';

import 'token_base.dart';
part 'fetch_token.g.dart';

@JsonSerializable()
class FetchToken extends TokenBase {
  ///
  FetchToken({
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
  factory FetchToken.fromJson(Map<String, dynamic> json) =>
      _$FetchTokenFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$FetchTokenToJson(this);
}
