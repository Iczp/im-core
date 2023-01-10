import 'request.dart';

abstract class RequestPost<T> extends Request<T> {
  ///
  @override
  HttpMethod get httpMethod => HttpMethod.post;

  ///
  RequestPost({
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });
}
