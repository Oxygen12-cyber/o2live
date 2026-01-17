import 'package:json_annotation/json_annotation.dart';
import 'package:o2live/service/api/dailyschedules/sporteventstatus.dart';

part 'livesporteventstatus.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LiveSportEventStatus {
  final String? status;
  final String? matchStatus;
  final int? homeScore;
  final int? awayScore;
  final List<PeriodScores>? periodScores;
  final bool? matchTie;
  final List<BallLocations>? ballLocations;
  final MatchSituation? matchSituation;
  final Clock? clock;

  LiveSportEventStatus({
    required this.status,
    required this.matchStatus,
    required this.homeScore,
    required this.awayScore,
    required this.periodScores,
    required this.matchTie,
    required this.ballLocations,
    required this.matchSituation,
    required this.clock,
  });

  factory LiveSportEventStatus.fromJson(Map<String, dynamic> json) =>
      _$LiveSportEventStatusFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Clock {
  final String? played;
  final String? stoppageTimePlayed;

  Clock({required this.played, required this.stoppageTimePlayed});

  factory Clock.fromJson(Map<String, dynamic> json) => _$ClockFromJson(json);
}
