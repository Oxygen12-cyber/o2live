import 'package:json_annotation/json_annotation.dart';

part 'sporteventstatus.g.dart';

// Main Class
@JsonSerializable()
class SportEventStatus {
  final String status;
  final String matchStatus;
  final int homeScore;
  final int awayScore;
  final List<PeriodScores> periodScores;
  final bool matchTie;
  final List<BallLocations> ballLocations;
  final MatchSituation matchSituation;

  SportEventStatus(
    this.status,
    this.matchStatus,
    this.homeScore,
    this.awayScore,
    this.periodScores,
    this.matchTie,
    this.ballLocations,
    this.matchSituation,
  );

  factory SportEventStatus.fromJson(Map<String, dynamic> json) =>
      _$SportEventStatusFromJson(json);
}

// Sub Classes

@JsonSerializable()
class MatchSituation {
  final String status;
  final String qualifier;
  final String updatedAt;

  MatchSituation({
    required this.status,
    required this.qualifier,
    required this.updatedAt,
  });

  factory MatchSituation.fromJson(Map<String, dynamic> json) =>
      _$MatchSituationFromJson(json);
}

@JsonSerializable()
class BallLocations {
  final int order;
  final int x;
  final int y;
  final String qualifier;

  BallLocations({
    required this.order,
    required this.x,
    required this.y,
    required this.qualifier,
  });

  factory BallLocations.fromJson(Map<String, dynamic> json) =>
      _$BallLocationsFromJson(json);
}

@JsonSerializable()
class PeriodScores {
  final int homeScore;
  final int awayScore;
  final String type;
  final int number;

  PeriodScores({
    required this.homeScore,
    required this.awayScore,
    required this.type,
    required this.number,
  });

  factory PeriodScores.fromJson(Map<String, dynamic> json) =>
      _$PeriodScoresFromJson(json);
}
