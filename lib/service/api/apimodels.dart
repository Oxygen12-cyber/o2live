import 'package:json_annotation/json_annotation.dart';
import 'package:o2live/service/api/sportevents/sportevent.dart';
import 'package:o2live/service/api/sportevents/sporteventstatus.dart';

part 'apimodels.g.dart';

// Big classes
@JsonSerializable(fieldRename: FieldRename.snake)
class Schedules {
  final SportEvent sportEvent;
  final SportEventStatus sportEventStatus;

  Schedules({required this.sportEvent, required this.sportEventStatus});

  factory Schedules.fromJson(Map<String, dynamic> json) =>
      _$SchedulesFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class SportRadar {
  @JsonKey(name: 'generated_at')
  final DateTime generatedTime;
  final List<Schedules> schedules;

  SportRadar({required this.generatedTime, required this.schedules});

  factory SportRadar.fromJson(Map<String, dynamic> json) =>
      _$SportRadarFromJson(json);
}
