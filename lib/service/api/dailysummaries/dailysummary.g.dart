// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dailysummary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Summaries _$SummariesFromJson(Map<String, dynamic> json) => Summaries(
  sportEvent: SportEvent.fromJson(json['sport_event'] as Map<String, dynamic>),
  sportEventStatus: SportEventStatus.fromJson(
    json['sport_event_status'] as Map<String, dynamic>,
  ),
  statistics: json['statistics'] == null
      ? null
      : Statistic.fromJson(json['statistics'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SummariesToJson(Summaries instance) => <String, dynamic>{
  'sport_event': instance.sportEvent,
  'sport_event_status': instance.sportEventStatus,
  'statistics': instance.statistics,
};

DailySummary _$DailySummaryFromJson(Map<String, dynamic> json) => DailySummary(
  generatedAt: DateTime.parse(json['generated_at'] as String),
  summaries: (json['summaries'] as List<dynamic>)
      .map((e) => Summaries.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DailySummaryToJson(DailySummary instance) =>
    <String, dynamic>{
      'generated_at': instance.generatedAt.toIso8601String(),
      'summaries': instance.summaries,
    };
