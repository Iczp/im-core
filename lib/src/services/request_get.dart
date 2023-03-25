import 'request.dart';

abstract class RequestGet<T> extends Request<T> {
  ///
  @override
  HttpMethod get httpMethod => HttpMethod.get;
}
