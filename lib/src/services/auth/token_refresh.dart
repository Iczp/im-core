import 'package:json_annotation/json_annotation.dart';

import 'token_base.dart';
part 'token_refresh.g.dart';

@JsonSerializable()
class TokenRefresh extends TokenBase {
  ///
  TokenRefresh({
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
  factory TokenRefresh.fromJson(Map<String, dynamic> json) =>
      _$TokenRefreshFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$TokenRefreshToJson(this);
}
