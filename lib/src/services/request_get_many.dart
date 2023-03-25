import 'request.dart';

abstract class RequestGetMany<T, Tkey> extends Request<T> {
  ///
  @override
  HttpMethod get httpMethod => HttpMethod.get;

  @override
  Map<String, dynamic>? getQueryParameters() => {'idList': idList};

  ///
  RequestGetMany({
    required this.idList,
  });

  final List<Tkey> idList;
}
