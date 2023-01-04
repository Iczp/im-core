import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:im_core/src/entities/session_units/session_unit.dart';
import 'package:im_core/src/services/base_dtos/paged_output.dart';
import 'package:logger/logger.dart';

import '../service_base.dart';
import 'dtos/session_unit_get_list_input.dart';

class SessionUnitService extends ServiceBase {
  @override
  String? servicePath = '/api/app/session-unit';

  Future<PagedOuput<SessionUnit>> getListAsync(
    SessionUnitGetListInput input, {
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    try {
      dio
          .get('/api/app/session-unit',
              queryParameters: input.toJson(),
              options: options,
              cancelToken: cancelToken,
              onReceiveProgress: onReceiveProgress)
          .then((res) {
        Logger().d(res);

        var items = <SessionUnit>[];
        for (var item in res.data['items'] as List<dynamic>) {
          items.add(SessionUnit.fromJson(item));
        }
        Logger().d('items.length:${items.length}');
        Logger().d(items);
      }).catchError((error, stackTrace) {
        Logger().e(error);
        Logger().e(stackTrace);
      });
    } catch (e) {
      Logger().w(e);
    }

    return Future.value(PagedOuput<SessionUnit>(
      totalCount: 0,
      items: <SessionUnit>[],
    ));
  }
}
