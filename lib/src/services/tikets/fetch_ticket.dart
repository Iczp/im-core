import 'package:im_core/src/services/request_post.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../entities/connects/connect_dto.dart';

part 'fetch_ticket.g.dart';

@JsonSerializable()
class FetchTicket extends RequestPost<ConnectDto> {
  ///
  @override
  String get apiUrl => '/api/app/ticket/generate';

  ///
  FetchTicket({
    super.options,
    super.cancelToken,
    super.onReceiveProgress,
    super.onSendProgress,
  });

  ///FromJson
  factory FetchTicket.fromJson(Map<String, dynamic> json) =>
      _$FetchTicketFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$FetchTicketToJson(this);

  @override
  ConnectDto mapToResult(dynamic data) {
    return ConnectDto.fromJson(data);
  }
}
