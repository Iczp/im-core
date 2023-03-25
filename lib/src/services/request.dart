import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:logger/logger.dart';
import '../../src/extensions/map_extension.dart';
import 'http_helper.dart';

enum HttpMethod { get, post, put, delete, patch }

const _$HttpMethod = {
  HttpMethod.get: 'GET',
  HttpMethod.post: 'POST',
  HttpMethod.put: 'PUT',
  HttpMethod.delete: 'DELETE',
  HttpMethod.patch: 'PATCH',
};

abstract class Request<T> {
  // Request();

  // ///
  // Request({
  //   this.onSendProgress,
  //   this.options,
  //   this.cancelToken,
  //   this.onReceiveProgress,
  // });

  ///
  @required
  String get apiUrl => throw UnimplementedError('未实现 "apiUrl" 参数');

  ///
  Dio get dio => HttpHelper.dio;

  ///
  HttpMethod get httpMethod;

  ///
  Map<String, dynamic>? getQueryParameters() => null;

  ///
  dynamic getPostData() => null;

  ///
  Map<String, dynamic>? get headers => null;

  // ///
  // @JsonKey(includeFromJson: false, includeToJson: false)
  // final Options? options;

  // ///
  // @JsonKey(includeFromJson: false, includeToJson: false)
  // final CancelToken? cancelToken;

  // /// https://github.com/google/json_serializable.dart/blob/06718b94d8e213e7b057326e3d3c555c940c1362/json_annotation/lib/src/json_key.dart#L45-L49
  // @JsonKey(includeFromJson: false, includeToJson: false)
  // final ProgressCallback? onSendProgress;

  // ///
  // @JsonKey(includeFromJson: false, includeToJson: false)
  // final ProgressCallback? onReceiveProgress;

  ///
  Future<Response<dynamic>> request({
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    Logger().d('apiUrl', apiUrl);
    Logger().d('baseUrl', dio.options.baseUrl);
    var ret = await dio.request(
      apiUrl,
      data: getPostData(),
      queryParameters: getQueryParameters()?.removeNullValue(),
      cancelToken: cancelToken,
      options: options ??
          Options(method: _$HttpMethod[httpMethod], headers: headers),
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
    return ret;
  }

  ///
  Future<T> submit({
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    var res = await request(
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
      onSendProgress: onSendProgress,
    );
    return mapToResult(res.data);
  }

  ///
  T mapToResult(dynamic data);
  // {
  //   return data;
  // }

  ///
  Map<String, dynamic> toJson() => <String, dynamic>{};
}
