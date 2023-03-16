import 'package:dio/dio.dart';
import 'package:im_core/im_core.dart';
import 'package:logger/logger.dart';

class TokenHelper {
  ///
  static TokenDto? _token;

  static TokenDto? get token => _token;

  static Dio? _dio;

  static Dio get dio => _dio!;

  static init(Dio dio) => _dio = dio;

  static Future<String> getAccessToken() async {
    // token ??= await FetchToken(
    //   clientId: HttpHelper.config.clientId!,
    //   clientSecret: HttpHelper.config.clientSecret,
    //   username: HttpHelper.config.username!,
    //   password: HttpHelper.config.password!,
    //   scope: 'IM offline_access roles profile phone email address',
    // ).submit();

    if (_token == null) {
      return Future.error('token is null,please login!');
    }
    if (_token!.isExpired()) {
      Logger().i('RefreshToken');
      try {
        _token = await RefreshToken(
          refreshToken: token!.refreshToken!,
          clientId: HttpHelper.config.clientId!,
          clientSecret: HttpHelper.config.clientSecret!,
        ).submit();
      } catch (err) {
        return Future.error('RefreshToken fail:$err');
      }
    }
    return Future.value(_token!.accessToken);
  }

  static TokenDto setToken(TokenDto token) {
    _token = token;
    return token;
  }

  static Future<TokenDto> login({
    required String username,
    required String password,
  }) async {
    _token = await FetchToken(
      clientId: HttpHelper.config.clientId!,
      clientSecret: HttpHelper.config.clientSecret,
      username: HttpHelper.config.username!,
      password: HttpHelper.config.password!,
      scope: 'IM offline_access roles profile phone email address',
    ).submit();
    return _token!;
  }
}
