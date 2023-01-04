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
    required this.id,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  ///
  final String id;

  @override
  Map<String, dynamic> toJson() => throw UnimplementedError();
}
