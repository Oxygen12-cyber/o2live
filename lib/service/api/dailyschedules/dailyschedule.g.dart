// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dailyschedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Schedules _$SchedulesFromJson(Map<String, dynamic> json) => Schedules(
  sportEvent: SportEvent.fromJson(json['sport_event'] as Map<String, dynamic>),
  sportEventStatus: SportEventStatus.fromJson(
    json['sport_event_status'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$SchedulesToJson(Schedules instance) => <String, dynamic>{
  'sport_event': instance.sportEvent,
  'sport_event_status': instance.sportEventStatus,
};

DailySchedules _$DailySchedulesFromJson(Map<String, dynamic> json) =>
    DailySchedules(
      generatedTime: DateTime.parse(json['generated_at'] as String),
      schedules: (json['schedules'] as List<dynamic>)
          .map((e) => Schedules.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DailySchedulesToJson(DailySchedules instance) =>
    <String, dynamic>{
      'generated_at': instance.generatedTime.toIso8601String(),
      'schedules': instance.schedules,
    };
