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
    // dio.interceptors.add(LogInterceptor(
    //   responseBody: true,
    //   requestHeader: true,
    //   logPrint: Logger().d,
    // )); //开启请求日志

    /// https://github.com/flutterchina/dio/blob/develop/example/lib/queued_interceptor_crsftoken.dart
    _dio!.interceptors.add(QueuedInterceptorsWrapper(
      onRequest: (options, handler) {
        Logger().i('request options:${options.uri}');
        Logger().i('request data:${options.data}');
        // Do something before request is sent
        return handler.next(options); //continue
        // If you want to resolve the request with some custom data，
        // you can resolve a `Response` object eg: `handler.resolve(response)`.
        // If you want to reject the request with a error message,
        // you can reject a `DioError` object eg: `handler.reject(dioError)`
      },
      onResponse: (response, handler) {
        Logger().w('response:$response');
        // Do something with response data
        return handler.next(response); // continue
        // If you want to reject the request with a error message,
        // you can reject a `DioError` object eg: `handler.reject(dioError)`
      },
      onError: (DioError err, handler) {
        // Do something with response error
        print('message:' + err.message);

        print('data:' + err.response?.data);

        if (err.type == DioErrorType.connectTimeout) {
          throw Exception("Connection Timeout Exception");
        }

        if (err.response != null) {
          throw Exception("response is null");
        }

        var statusCode = err.response!.statusCode;
        Logger().w('statusCode:$statusCode');

        switch (statusCode) {
          case 401:
            // Future.delayed(const Duration(seconds: 2), () {
            //   handler.next(err);
            // });

            break;
          case 400:
          case 403:
            break;

          case 500:
            break;
          default:
            break;
        }

        return handler.next(err); //continue
        // If you want to resolve the request with some custom data，
        // you can resolve a `Response` object eg: `handler.resolve(response)`.
      },
    ));

    return _dio!;
  }
}
