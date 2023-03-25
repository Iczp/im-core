import 'request.dart';
import 'base_dtos/paged_output.dart';

abstract class RequestGetList<T extends PagedOuput> extends Request<T> {
  ///
  @override
  HttpMethod get httpMethod => HttpMethod.get;

  ///
  @override
  Map<String, dynamic>? getQueryParameters() => toJson();

  ///
  RequestGetList({
    this.maxResultCount = 10,
    this.skipCount = 0,
    this.sorting,
    this.keyword,
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
