// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livesummary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveSummaryItem _$LiveSummaryItemFromJson(Map<String, dynamic> json) =>
    LiveSummaryItem(
      sportEvent: LiveSportEvent.fromJson(
        json['sport_event'] as Map<String, dynamic>,
      ),
      sportEventStatus: LiveSportEventStatus.fromJson(
        json['sport_event_status'] as Map<String, dynamic>,
      ),
      statistics: json['statistics'] == null
          ? null
          : LiveStatistics.fromJson(json['statistics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LiveSummaryItemToJson(LiveSummaryItem instance) =>
    <String, dynamic>{
      'sport_event': instance.sportEvent,
      'sport_event_status': instance.sportEventStatus,
      'statistics': instance.statistics,
    };

LiveSummaries _$LiveSummariesFromJson(Map<String, dynamic> json) =>
    LiveSummaries(
      generatedAt: DateTime.parse(json['generated_at'] as String),
      summaries: (json['summaries'] as List<dynamic>)
          .map((e) => LiveSummaryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LiveSummariesToJson(LiveSummaries instance) =>
    <String, dynamic>{
      'generated_at': instance.generatedAt.toIso8601String(),
      'summaries': instance.summaries,
    };
