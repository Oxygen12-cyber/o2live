import 'package:json_annotation/json_annotation.dart';
import 'package:o2live/service/api/dailyschedules/sportevent.dart';
import 'package:o2live/service/api/dailyschedules/sporteventstatus.dart';

part 'dailyschedule.g.dart';

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
class DailySchedules {
  @JsonKey(name: 'generated_at')
  final DateTime generatedTime;
  
  final List<Schedules> schedules;

  DailySchedules({required this.generatedTime, required this.schedules});

  factory DailySchedules.fromJson(Map<String, dynamic> json) =>
      _$DailySchedulesFromJson(json);
}
