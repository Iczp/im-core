import 'package:im_core/src/services/request_post.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../entities/connects/connect_dto.dart';

part 'ticket_generate.g.dart';

@JsonSerializable()
class TicketGenerate extends RequestPost<ConnectDto> {
  ///
  @override
  String get apiUrl => '/api/app/ticket/generate';

  ///
  TicketGenerate();

  ///FromJson
  factory TicketGenerate.fromJson(Map<String, dynamic> json) =>
      _$TicketGenerateFromJson(json);

  ///ToJson
  @override
  Map<String, dynamic> toJson() => _$TicketGenerateToJson(this);

  @override
  ConnectDto mapToResult(dynamic data) {
    return ConnectDto.fromJson(data);
  }
}
