// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livesporteventstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveSportEventStatus _$LiveSportEventStatusFromJson(
  Map<String, dynamic> json,
) => LiveSportEventStatus(
  status: json['status'] as String?,
  matchStatus: json['match_status'] as String?,
  homeScore: (json['home_score'] as num?)?.toInt(),
  awayScore: (json['away_score'] as num?)?.toInt(),
  periodScores: (json['period_scores'] as List<dynamic>?)
      ?.map((e) => PeriodScores.fromJson(e as Map<String, dynamic>))
      .toList(),
  matchTie: json['match_tie'] as bool?,
  ballLocations: (json['ball_locations'] as List<dynamic>?)
      ?.map((e) => BallLocations.fromJson(e as Map<String, dynamic>))
      .toList(),
  matchSituation: json['match_situation'] == null
      ? null
      : MatchSituation.fromJson(
          json['match_situation'] as Map<String, dynamic>,
        ),
  clock: json['clock'] == null
      ? null
      : Clock.fromJson(json['clock'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LiveSportEventStatusToJson(
  LiveSportEventStatus instance,
) => <String, dynamic>{
  'status': instance.status,
  'match_status': instance.matchStatus,
  'home_score': instance.homeScore,
  'away_score': instance.awayScore,
  'period_scores': instance.periodScores,
  'match_tie': instance.matchTie,
  'ball_locations': instance.ballLocations,
  'match_situation': instance.matchSituation,
  'clock': instance.clock,
};

Clock _$ClockFromJson(Map<String, dynamic> json) => Clock(
  played: json['played'] as String?,
  stoppageTimePlayed: json['stoppage_time_played'] as String?,
);

Map<String, dynamic> _$ClockToJson(Clock instance) => <String, dynamic>{
  'played': instance.played,
  'stoppage_time_played': instance.stoppageTimePlayed,
};
