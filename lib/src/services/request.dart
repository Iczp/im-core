import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:im_core/src/extensions/map_extension.dart';
import 'http_helper.dart';

abstract class Request<T> {
  ///
  Request({
    this.onSendProgress,
    this.options,
    this.cancelToken,
    this.onReceiveProgress,
  });

  ///
  @required
  String get apiUrl => throw UnimplementedError('未实现 "apiUrl" 参数');

  ///
  Dio get dio => HttpHelper.dio;

  ///
  String get httpMethod;

  ///
  Map<String, dynamic>? getQueryParameters() => null;

  dynamic getPostData() => null;

  ///
  @JsonKey(ignore: true)
  final Options? options;

  ///
  @JsonKey(ignore: true)
  final CancelToken? cancelToken;

  /// https://github.com/google/json_serializable.dart/blob/06718b94d8e213e7b057326e3d3c555c940c1362/json_annotation/lib/src/json_key.dart#L45-L49
  @JsonKey(ignore: true)
  final ProgressCallback? onSendProgress;

  ///
  @JsonKey(ignore: true)
  final ProgressCallback? onReceiveProgress;

  ///
  Future<Response<dynamic>> request() {
    return dio.request(
      apiUrl,
      data: getPostData(),
      queryParameters: getQueryParameters()?.removeNullValue(),
      cancelToken: cancelToken,
      options: options ?? Options(method: httpMethod.toLowerCase()),
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  ///
  Future<T> submit();

  ///
  Map<String, dynamic> toJson() => <String, dynamic>{};
}
