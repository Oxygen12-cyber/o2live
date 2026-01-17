import 'package:json_annotation/json_annotation.dart';
import 'package:o2live/service/api/liveschedules/livesportevent.dart';
import 'package:o2live/service/api/liveschedules/livesporteventstatus.dart';
import 'package:o2live/service/api/livesummaries/livestatistics.dart';

part 'livesummary.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LiveSummaryItem {
  final LiveSportEvent sportEvent;
  final LiveSportEventStatus sportEventStatus;
  final LiveStatistics? statistics;

  LiveSummaryItem({
    required this.sportEvent,
    required this.sportEventStatus,
    required this.statistics,
  });

  factory LiveSummaryItem.fromJson(Map<String, dynamic> json) =>
      _$LiveSummaryItemFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LiveSummaries {
  @JsonKey(name: 'generated_at')
  final DateTime generatedAt;

  final List<LiveSummaryItem> summaries;

  LiveSummaries({required this.generatedAt, required this.summaries});

  factory LiveSummaries.fromJson(Map<String, dynamic> json) =>
      _$LiveSummariesFromJson(json);
}
