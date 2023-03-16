import 'package:dio/dio.dart';
import 'package:im_core/src/services/auth/token_helper.dart';

import 'package:logger/logger.dart';

import '../options/http_config.dart';

class HttpHelper {
  ///
  static Dio? _dio;

  static Dio get dio => _dio!;

  static HttpConfig? _httpConfig;

  static HttpConfig get config => _httpConfig!;

  static Dio init(HttpConfig httpConfig) {
    _httpConfig = httpConfig;
    var options = BaseOptions(
      baseUrl: httpConfig.apiHost,
      connectTimeout: httpConfig.connectTimeout,
      receiveTimeout: httpConfig.receiveTimeout,
    );
    options.contentType = 'application/json';

    options.headers['__deviceId__'] = 'IczpNet_123';

    options.headers['__version__'] = '1.0';

    TokenHelper.init(Dio(BaseOptions(
      baseUrl: httpConfig.authHost,
    )));

    _dio = Dio(options);

    /// Log
    // dio.interceptors.add(LogInterceptor(
    //   responseBody: true,
    //   requestHeader: true,
    //   logPrint: Logger().d,
    // )); //开启请求日志

    /// https://github.com/flutterchina/dio/blob/develop/example/lib/queued_interceptor_crsftoken.dart
    _dio!.interceptors.add(QueuedInterceptorsWrapper(
      onRequest: (options, handler) async {
        // options.baseUrl

        try {
          var accessToken = await TokenHelper.getAccessToken();
          options.headers['access_token'] = accessToken;
        } catch (err) {
          Logger().i(err);
        }

        Logger().i('request options.headers:${options.headers}');
        Logger().i('request options.uri:${options.uri}');
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

        if (![200, 204].contains(response.statusCode!)) {
          // return handler
          //     .reject(DioError(requestOptions: requestOptions)); // continue
        }
        // Do something with response data
        return handler.next(response); // continue
        // If you want to reject the request with a error message,
        // you can reject a `DioError` object eg: `handler.reject(dioError)`
      },
      onError: (DioError err, handler) async {
        // Do something with response error

        print('err:${err}');

        print('message:${err.message}');

        print('data:${err.response?.data}');

        if (err.type == DioErrorType.connectTimeout) {
          throw Exception("Connection Timeout Exception");
        }

        if (err.response == null) {
          throw Exception("response is null");
        }

        var statusCode = err.response!.statusCode;
        Logger().w('statusCode:$statusCode');

        Map<String, dynamic>? error = err.response!.data;

        switch (statusCode) {
          case 401:
            await getToken();
            // Future.delayed(const Duration(seconds: 2), () {
            //   handler.next(err);
            // });

            break;
          case 400:
          case 403:
            throw Exception(
                "[$statusCode],runtimeType ${error.runtimeType} $error");
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

  static Future getToken() {
    Logger().w('getToken');
    return Future.delayed(const Duration(seconds: 5));
  }
}
