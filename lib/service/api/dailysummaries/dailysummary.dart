import 'package:json_annotation/json_annotation.dart';
import 'package:o2live/service/api/dailyschedules/sportevent.dart';
import 'package:o2live/service/api/dailyschedules/sporteventstatus.dart';
import 'package:o2live/service/api/dailysummaries/statistic.dart';

part 'dailysummary.g.dart';


@JsonSerializable(fieldRename: FieldRename.snake)
class Summaries {
  final SportEvent sportEvent;
  final SportEventStatus sportEventStatus;
  final Statistic statistics;

  Summaries({required this.sportEvent, required this.sportEventStatus, required this.statistics});
   factory Summaries.fromJson(Map<String, dynamic> json) =>
      _$SummariesFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class DailySummary {
  final DateTime generatedAt;
  final List<Summaries> summaries;

  DailySummary({required this.generatedAt, required this.summaries});

  factory DailySummary.fromJson(Map<String, dynamic> json) =>
      _$DailySummaryFromJson(json);
}
