import 'package:json_annotation/json_annotation.dart';
import 'package:o2live/service/api/liveschedules/livesportevent.dart';
import 'package:o2live/service/api/liveschedules/livesporteventstatus.dart';

part 'liveschedule.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LiveScheduleItem {
  final LiveSportEvent sportEvent;
  final LiveSportEventStatus sportEventStatus;

  LiveScheduleItem({required this.sportEvent, required this.sportEventStatus});

  factory LiveScheduleItem.fromJson(Map<String, dynamic> json) =>
      _$LiveScheduleItemFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LiveSchedules {
  @JsonKey(name: 'generated_at')
  final DateTime generatedTime;

  final List<LiveScheduleItem> schedules;

  LiveSchedules({required this.generatedTime, required this.schedules});

  factory LiveSchedules.fromJson(Map<String, dynamic> json) =>
      _$LiveSchedulesFromJson(json);
}
