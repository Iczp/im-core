import 'package:dio/dio.dart';
import 'package:im_core/src/entities/session_units/session_unit.dart';
import 'package:im_core/src/services/base_dtos/paged_output.dart';
import 'package:logger/logger.dart';

import '../service_base.dart';
import 'dtos/session_unit_get_list_input.dart';

class SessionUnitService extends ServiceBase {
  @override
  String? servicePath = "/api/app/session-unit";

  Future<PagedOuput<SessionUnit>> getListAsync(
    SessionUnitGetListInput input, {
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    var res = dio.get(
      '/api/app/session-unit',
      queryParameters: input.toJson(),
    );
    Logger().d(res);
    return Future.value(PagedOuput<SessionUnit>(
      totalCount: 0,
      items: <SessionUnit>[],
    ));
  }
}
