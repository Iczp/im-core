import 'request.dart';

abstract class RequestGet<T> extends Request<T> {
  ///
  @override
  HttpMethod get httpMethod => HttpMethod.get;

  ///
  RequestGet({
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });
}
