import 'package:json_annotation/json_annotation.dart';

part 'connect_dto.g.dart';

@JsonSerializable()
class ConnectDto {
  ConnectDto({
    required this.webScoketUrl,
    this.pingIntervalSeconds = 3,
    this.timeoutSeconds = 30,
    this.heartbeatSeconds = 10,
    this.expireSeconds = 60,
  });

  final String webScoketUrl;

  @JsonKey(defaultValue: 3)
  final int pingIntervalSeconds;

  @JsonKey(defaultValue: 30)
  final int timeoutSeconds;

  @JsonKey(defaultValue: 10)
  final int heartbeatSeconds;

  @JsonKey(defaultValue: 60)
  final int expireSeconds;

  final DateTime localTime = DateTime.now();

  ///FromJson
  factory ConnectDto.fromJson(Map<String, dynamic> json) =>
      _$ConnectDtoFromJson(json);

  ///ToJson
  // @override
  Map<String, dynamic> toJson() => _$ConnectDtoToJson(this);
}
