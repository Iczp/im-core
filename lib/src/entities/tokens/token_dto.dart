import 'package:json_annotation/json_annotation.dart';

part 'token_dto.g.dart';

@JsonSerializable()
class TokenDto {
  TokenDto({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    this.refreshToken,
  });

  @JsonKey(name: 'access_token')
  final String accessToken;

  @JsonKey(name: 'token_type')
  final String tokenType;

  @JsonKey(name: 'expires_in')
  final int expiresIn;

  @JsonKey(name: 'refresh_token')
  final String? refreshToken;

  final DateTime creationTime = DateTime.now();

  ///FromJson
  factory TokenDto.fromJson(Map<String, dynamic> json) =>
      _$TokenDtoFromJson(json);

  ///ToJson
  // @override
  Map<String, dynamic> toJson() => _$TokenDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

  bool isExpired() {
    return DateTime.now().difference(creationTime).inSeconds > expiresIn;
  }
}
