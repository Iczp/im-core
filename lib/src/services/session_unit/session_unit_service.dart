import 'package:dio/dio.dart';
import 'package:im_core/src/entities/session_units/session_unit.dart';
import 'package:im_core/src/services/base_dtos/paged_output.dart';

import '../../enums/chat_object_types_enum.dart';
import '../service_base.dart';
import 'dtos/session_unit_get_list_input.dart';

class SessionUnitService extends ServiceBase {
  @override
  String? servicePath = '/api/app/session-unit';

  Future<PagedOuput<SessionUnit>> getList_back(
    SessionUnitGetListInput input, {
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    var res = await dio.get(
      '/api/app/session-unit',
      queryParameters: input.toJson(),
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
    return PagedOuput<SessionUnit>(
      totalCount: (res.data['totalCount'] as num).toInt(),
      items: (res.data['items'] as List)
          .map((x) => SessionUnit.fromJson(x))
          .toList(),
    );
  }

  /// 获取列表
  Future<PagedOuput<SessionUnit>> getListAsync({
    required String ownerId,
    String? destinationId,
    ChatObjectTypesEnum? destinationObjectType,
    bool isRemind = false,
    bool isBadge = false,
    int? minAutoId,
    int? maxAutoId,
    int maxResultCount = 10,
    int skipCount = 0,
    String? sorting,
    String? keyword,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    var res = await dio.get(
      '/api/app/session-unit',
      queryParameters: <String, dynamic>{
        'ownerId': ownerId,
        'destinationId': destinationId,
        'destinationObjectType': destinationObjectType,
        'maxResultCount': maxResultCount,
        'isRemind': isRemind,
        'isBadge': isBadge,
        'minAutoId': minAutoId,
        'maxAutoId': maxAutoId,
        'skipCount': skipCount,
        'sorting': sorting,
        'keyword': keyword,
      },
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
    return PagedOuput<SessionUnit>(
      totalCount: (res.data['totalCount'] as num).toInt(),
      items: (res.data['items'] as List)
          .map((x) => SessionUnit.fromJson(x))
          .toList(),
    );
  }
}
