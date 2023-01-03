import 'package:dio/dio.dart';

class HttpHelper {
  ///
  static Dio? _dio;

  static Dio get dio => _dio!;

  static Dio init(
    String baseUrl, {
    connectTimeout = 1000 * 30,
    receiveTimeout = 1000 * 30,
  }) {
    var options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
    );
    _dio = Dio(options);
    return _dio!;
  }
}
