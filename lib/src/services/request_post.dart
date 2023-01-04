import 'request.dart';

abstract class RequestPost<T> extends Request<T> {
  ///
  @override
  String get httpMethod => 'POST';

  ///
  @override
  Map<String, dynamic>? getQueryParameters() => null;

  ///
  RequestPost({
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });
}
