import 'request.dart';

abstract class RequestGet<T> extends Request<T> {
  ///
  @override
  String get httpMethod => 'GET';

  ///
  @override
  Map<String, dynamic>? getQueryParameters() => null;

  ///
  RequestGet({
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  @override
  Map<String, dynamic> toJson() => throw UnimplementedError();
}
