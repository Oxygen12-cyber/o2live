// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sporteventstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SportEventStatus _$SportEventStatusFromJson(Map<String, dynamic> json) =>
    SportEventStatus(
      status: json['status'] as String,
      matchStatus: json['match_status'] as String,
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
    );

Map<String, dynamic> _$SportEventStatusToJson(SportEventStatus instance) =>
    <String, dynamic>{
      'status': instance.status,
      'match_status': instance.matchStatus,
      'home_score': instance.homeScore,
      'away_score': instance.awayScore,
      'period_scores': instance.periodScores,
      'match_tie': instance.matchTie,
      'ball_locations': instance.ballLocations,
      'match_situation': instance.matchSituation,
    };

MatchSituation _$MatchSituationFromJson(Map<String, dynamic> json) =>
    MatchSituation(
      status: json['status'] as String,
      qualifier: json['qualifier'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$MatchSituationToJson(MatchSituation instance) =>
    <String, dynamic>{
      'status': instance.status,
      'qualifier': instance.qualifier,
      'updated_at': instance.updatedAt,
    };

BallLocations _$BallLocationsFromJson(Map<String, dynamic> json) =>
    BallLocations(
      order: (json['order'] as num?)?.toInt(),
      x: (json['x'] as num?)?.toInt(),
      y: (json['y'] as num?)?.toInt(),
      qualifier: json['qualifier'] as String?,
    );

Map<String, dynamic> _$BallLocationsToJson(BallLocations instance) =>
    <String, dynamic>{
      'order': instance.order,
      'x': instance.x,
      'y': instance.y,
      'qualifier': instance.qualifier,
    };

PeriodScores _$PeriodScoresFromJson(Map<String, dynamic> json) => PeriodScores(
  homeScore: (json['home_score'] as num?)?.toInt(),
  awayScore: (json['away_score'] as num?)?.toInt(),
  type: json['type'] as String?,
  number: (json['number'] as num?)?.toInt(),
);

Map<String, dynamic> _$PeriodScoresToJson(PeriodScores instance) =>
    <String, dynamic>{
      'home_score': instance.homeScore,
      'away_score': instance.awayScore,
      'type': instance.type,
      'number': instance.number,
    };
