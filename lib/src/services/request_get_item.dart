import 'request_get.dart';

abstract class RequestGetItem<T, Tkey> extends RequestGet<T> {
  // ///
  // @override
  // Map<String, dynamic>? getQueryParameters() => {'id': id};

  ///
  RequestGetItem({
    required this.id,
  });

  final Tkey id;
}
