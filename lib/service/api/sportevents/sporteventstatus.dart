import 'package:json_annotation/json_annotation.dart';

part 'sporteventstatus.g.dart';

// Main Class
@JsonSerializable(fieldRename: FieldRename.snake)
class SportEventStatus {
  final String status;
  final String matchStatus;
  final int? homeScore;
  final int? awayScore;
  final List<PeriodScores>? periodScores;

  
  final bool? matchTie;

  final List<BallLocations>? ballLocations;
  final MatchSituation? matchSituation;

  SportEventStatus({
    required this.status,
    required this.matchStatus,
    required this.homeScore,
    required this.awayScore,
    required this.periodScores,
    required this.matchTie,
    required this.ballLocations,
    required this.matchSituation,
  });

  factory SportEventStatus.fromJson(Map<String, dynamic> json) =>
      _$SportEventStatusFromJson(json);
}

// Sub Classes
@JsonSerializable()
class MatchSituation {
  final String status;
  final String qualifier;

  @JsonKey(name: 'updated_at')
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
  final int? order;
  final int? x;
  final int? y;
  final String? qualifier;

  BallLocations({
    required this.order,
    required this.x,
    required this.y,
    required this.qualifier,
  });

  factory BallLocations.fromJson(Map<String, dynamic> json) =>
      _$BallLocationsFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PeriodScores {
  final int? homeScore;
  final int? awayScore;
  final String? type;
  final int? number;

  PeriodScores({
    required this.homeScore,
    required this.awayScore,
    required this.type,
    required this.number,
  });

  factory PeriodScores.fromJson(Map<String, dynamic> json) =>
      _$PeriodScoresFromJson(json);
}
