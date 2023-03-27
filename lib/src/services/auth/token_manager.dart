import 'package:dio/dio.dart';
import 'package:im_core/im_core.dart';
import 'package:logger/logger.dart';

class TokenManager {
  //私有构造函数
  TokenManager._internal();

  //保存单例
  static final _singleton = TokenManager._internal();

  //工厂构造函数
  static TokenManager get singleton => _singleton;

  ///
  static TokenDto? _token;

  static TokenDto get token => _token!;

  static String get authorization => '${token.tokenType} ${token.accessToken}';

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
    // String clientId = HttpHelper.config.clientId!,
    // String? clientSecret = HttpHelper.config.clientSecret,
    String scope = 'IM offline_access roles profile phone email address',
  }) async {
    _token = await TokenLogin(
      clientId: HttpHelper.config.clientId!,
      clientSecret: HttpHelper.config.clientSecret,
      username: HttpHelper.config.username!,
      password: HttpHelper.config.password!,
      scope: scope,
    ).submit();
    return _token!;
  }

  static Future<TokenDto> refreshToken({required String refreshToken}) async {
    _token = await TokenRefresh(
      refreshToken: refreshToken,
      clientId: HttpHelper.config.clientId!,
      clientSecret: HttpHelper.config.clientSecret!,
    ).submit();
    return _token!;
  }
}
