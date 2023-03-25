import 'request.dart';

abstract class RequestPost<T> extends Request<T> {
  ///
  @override
  HttpMethod get httpMethod => HttpMethod.post;
}
