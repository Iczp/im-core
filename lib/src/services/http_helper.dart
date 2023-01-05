import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class HttpHelper {
  ///
  static Dio? _dio;

  static Dio get dio => _dio!;

  static Dio init({
    required String baseUrl,
    connectTimeout = 1000 * 30,
    receiveTimeout = 1000 * 30,
  }) {
    var options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
    );
    options.contentType = 'application/json';

    options.headers['__deviceId__'] = 'IczpNet_123';

    options.headers['__version__'] = '1.0';

    _dio = Dio(options);

    /// Log
    dio.interceptors.add(LogInterceptor(
      responseBody: true,
      requestHeader: true,
      logPrint: Logger().d,
    )); //开启请求日志

    /// https://github.com/flutterchina/dio/blob/develop/example/lib/queued_interceptor_crsftoken.dart
    _dio!.interceptors.add(QueuedInterceptorsWrapper(
      onRequest: (options, handler) {
        // Do something before request is sent
        return handler.next(options); //continue
        // If you want to resolve the request with some custom data，
        // you can resolve a `Response` object eg: `handler.resolve(response)`.
        // If you want to reject the request with a error message,
        // you can reject a `DioError` object eg: `handler.reject(dioError)`
      },
      onResponse: (response, handler) {
        // Do something with response data
        return handler.next(response); // continue
        // If you want to reject the request with a error message,
        // you can reject a `DioError` object eg: `handler.reject(dioError)`
      },
      onError: (DioError e, handler) {
        // Do something with response error
        print('message:' + e.message);

        print('data:' + e.response?.data);

        if (e.response != null) {
          var statusCode = e.response!.statusCode;

          switch (statusCode) {
            case 400:
              break;
          }
        }

        return handler.next(e); //continue
        // If you want to resolve the request with some custom data，
        // you can resolve a `Response` object eg: `handler.resolve(response)`.
      },
    ));

    return _dio!;
  }
}
