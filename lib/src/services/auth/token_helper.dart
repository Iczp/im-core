import 'package:dio/dio.dart';
import 'package:im_core/im_core.dart';
import 'package:logger/logger.dart';

class TokenHelper {
  ///
  static TokenDto? _token;

  // static TokenDto? get token => _token;

  static Dio? _dio;

  static Dio get dio => _dio!;

  static init(Dio dio) => _dio = dio;

  static Future<TokenDto?> getToken() async {
    // token ??= await FetchToken(
    //   clientId: HttpHelper.config.clientId!,
    //   clientSecret: HttpHelper.config.clientSecret,
    //   username: HttpHelper.config.username!,
    //   password: HttpHelper.config.password!,
    //   scope: 'IM offline_access roles profile phone email address',
    // ).submit();

    if (_token == null) {
      Logger().i('token is null,please login!');
      return null;
    }
    if (_token!.isExpired()) {
      // Logger().w('token isExpired, RefreshToken');
      // try {
      //   _token = await refreshToken(refreshToken: _token!.refreshToken!);
      // } catch (err) {
      //   Logger().w('RefreshToken fail:$err');
      //   return null;
      // }
    }
    return _token;
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

  static Future<TokenDto> refreshToken({required String refreshToken}) async {
    _token = await RefreshToken(
      refreshToken: refreshToken,
      clientId: HttpHelper.config.clientId!,
      clientSecret: HttpHelper.config.clientSecret!,
    ).submit();
    return _token!;
  }
}
