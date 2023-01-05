import 'request.dart';

abstract class RequestGet<T> extends Request<T> {
  ///
  @override
  String get httpMethod => 'GET';

  ///
  RequestGet({
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });
}
