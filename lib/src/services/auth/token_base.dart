import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:im_core/extensions.dart';
import 'package:im_core/services.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../entities/tokens/token_dto.dart';
import '../request_post.dart';

abstract class TokenBase extends RequestPost<TokenDto> {
  ///
  static const String tokenUrl = '/connect/token';

  ///
  @override
  Dio get dio => TokenHelper.dio;

  ///
  @override
  String get apiUrl => tokenUrl;

  ///
  @override
  Map<String, dynamic> get headers => <String, dynamic>{
        "content-type": "application/x-www-form-urlencoded",
      };

  @override
  Map<String, dynamic>? getPostData() => toJson().removeNullValue();

  ///
  @override
  TokenDto mapToResult(dynamic data) {
    return TokenDto.fromJson(data);
  }

  ///
  TokenBase({
    required this.clientId,
    this.clientSecret,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  // ignore: non_constant_identifier_names
  abstract final String grantType;

  @JsonKey(name: 'client_id')
  final String clientId;

  @JsonKey(name: 'client_secret')
  final String? clientSecret;

  static bool isTokenUrl(String uri) =>
      uri.toLowerCase().contains(tokenUrl.toLowerCase());
}
