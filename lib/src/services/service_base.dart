import 'package:dio/dio.dart';
import 'package:im_core/src/services/http_helper.dart';

abstract class ServiceBase {
  ///
  late final String? baseUrl;

  abstract String? servicePath;

  Dio get dio => HttpHelper.dio;
}
