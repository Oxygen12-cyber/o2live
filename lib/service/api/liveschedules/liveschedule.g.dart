// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liveschedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveScheduleItem _$LiveScheduleItemFromJson(Map<String, dynamic> json) =>
    LiveScheduleItem(
      sportEvent: LiveSportEvent.fromJson(
        json['sport_event'] as Map<String, dynamic>,
      ),
      sportEventStatus: LiveSportEventStatus.fromJson(
        json['sport_event_status'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$LiveScheduleItemToJson(LiveScheduleItem instance) =>
    <String, dynamic>{
      'sport_event': instance.sportEvent,
      'sport_event_status': instance.sportEventStatus,
    };

LiveSchedules _$LiveSchedulesFromJson(Map<String, dynamic> json) =>
    LiveSchedules(
      generatedTime: DateTime.parse(json['generated_at'] as String),
      schedules: (json['schedules'] as List<dynamic>)
          .map((e) => LiveScheduleItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LiveSchedulesToJson(LiveSchedules instance) =>
    <String, dynamic>{
      'generated_at': instance.generatedTime.toIso8601String(),
      'schedules': instance.schedules,
    };
