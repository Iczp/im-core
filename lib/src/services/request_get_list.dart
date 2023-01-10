import 'request.dart';
import 'base_dtos/paged_output.dart';

abstract class RequestGetList<T extends PagedOuput> extends Request<T> {
  ///
  @override
  HttpMethod get httpMethod => HttpMethod.get;

  ///
  RequestGetList({
    this.maxResultCount = 10,
    this.skipCount = 0,
    this.sorting,
    this.keyword,
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  ///
  int maxResultCount;

  ///
  int skipCount;

  ///
  String? sorting;

  ///
  String? keyword;

  int getTotalCount(dynamic data) {
    return (data['totalCount'] as num).toInt();
  }

  List getItems(dynamic data) {
    return data['items'] as List;
  }
}
