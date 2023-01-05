import 'request.dart';

abstract class RequestPost<T> extends Request<T> {
  ///
  @override
  String get httpMethod => 'POST';

  ///
  RequestPost({
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });
}
