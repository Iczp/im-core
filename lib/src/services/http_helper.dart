import 'dart:io';

import 'package:dio/dio.dart';
import 'package:im_core/src/services/auth/token_manager.dart';

import 'package:logger/logger.dart';

import '../options/http_config.dart';

class HttpHelper {
  ///
  static Dio? _dio;

  static int i = 0;

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

    TokenManager.init(Dio(BaseOptions(
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
          var token = await TokenManager.singleton.getToken();
          if (token != null) {
            Logger().i('$i ${token.accessToken}');
            Logger().i(options.headers['authorization']);
            i++;
            options.headers['authorization'] =
                '${token.tokenType} ${token.accessToken}';
            Logger().i(token.creationTime);

            Logger().w(options.headers['authorization']);
          }
        } catch (err) {
          Logger().i(err);
        }
        // var aaa =
        //     'Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IkIyMTIyOTg4MDQ2ODM2NjFEQTRGNjY4QzY5RkYwREQxOUFFRkU5NUMiLCJ4NXQiOiJzaElwaUFSb05tSGFUMmFNYWY4TjBacnY2VnciLCJ0eXAiOiJhdCtqd3QifQ.eyJzdWIiOiIzNjBjZmVkYi1lOTJkLTMzMzEtMWZhZC0zYTA4NjM3MWUwZTQiLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJhZG1pbiIsImVtYWlsIjoiYWRtaW5AYWJwLmlvIiwicm9sZSI6ImFkbWluIiwiZ2l2ZW5fbmFtZSI6ImFkbWluIiwicGhvbmVfbnVtYmVyX3ZlcmlmaWVkIjoiRmFsc2UiLCJlbWFpbF92ZXJpZmllZCI6IkZhbHNlIiwidW5pcXVlX25hbWUiOiJhZG1pbiIsImNoYXRfb2JqZWN0X2lkIjpbIjEzIiwiMTQiXSwiY2hhdF9vYmplY3RfY291bnQiOjIsIm9pX3Byc3QiOiJJTV9BcHAiLCJvaV9hdV9pZCI6IjVkNmYwOTQyLWY5OWItMDlmNy0xNjk2LTNhMGEwZWUzMTVjZSIsImNsaWVudF9pZCI6IklNX0FwcCIsIm9pX3Rrbl9pZCI6IjhmOTY0NzdiLWZhMWYtNDYyZS05NDczLTNhMGEwZWUzMTVmMSIsImF1ZCI6IklNIiwic2NvcGUiOiJJTSBvZmZsaW5lX2FjY2VzcyByb2xlcyBwcm9maWxlIHBob25lIGVtYWlsIGFkZHJlc3MiLCJqdGkiOiJkYWYwNzEzMi1jODY3LTRiZjAtOTk3OS1hY2U0YzM5OGI1ODIiLCJleHAiOjE2NzkzNjM0NDcsImlzcyI6Imh0dHA6Ly8xMC4wLjUuMjA6ODA0My8iLCJpYXQiOjE2NzkyNzcwNDd9.TEGzkMogC0x6w_d_VaN_5fM0tImNTgf7pbn_89f79-efPKE3fLk8eY';

        // options.headers['authorization'] = aaa;
        // Logger().e('============${options.headers['authorization'] == aaa}');

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
        Logger().w('err.response:${err.response}');
        var error = err.response!.data;

        switch (statusCode) {
          case 401:
            // handler.reject(err);
            // throw Exception(
            //     "[$statusCode],runtimeType ${error.runtimeType} $error");
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
}
