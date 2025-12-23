// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sporteventstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SportEventStatus _$SportEventStatusFromJson(Map<String, dynamic> json) =>
    SportEventStatus(
      json['status'] as String,
      json['matchStatus'] as String,
      (json['homeScore'] as num).toInt(),
      (json['awayScore'] as num).toInt(),
      (json['periodScores'] as List<dynamic>)
          .map((e) => PeriodScores.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['matchTie'] as bool,
      (json['ballLocations'] as List<dynamic>)
          .map((e) => BallLocations.fromJson(e as Map<String, dynamic>))
          .toList(),
      MatchSituation.fromJson(json['matchSituation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SportEventStatusToJson(SportEventStatus instance) =>
    <String, dynamic>{
      'status': instance.status,
      'matchStatus': instance.matchStatus,
      'homeScore': instance.homeScore,
      'awayScore': instance.awayScore,
      'periodScores': instance.periodScores,
      'matchTie': instance.matchTie,
      'ballLocations': instance.ballLocations,
      'matchSituation': instance.matchSituation,
    };

MatchSituation _$MatchSituationFromJson(Map<String, dynamic> json) =>
    MatchSituation(
      status: json['status'] as String,
      qualifier: json['qualifier'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$MatchSituationToJson(MatchSituation instance) =>
    <String, dynamic>{
      'status': instance.status,
      'qualifier': instance.qualifier,
      'updatedAt': instance.updatedAt,
    };

BallLocations _$BallLocationsFromJson(Map<String, dynamic> json) =>
    BallLocations(
      order: (json['order'] as num).toInt(),
      x: (json['x'] as num).toInt(),
      y: (json['y'] as num).toInt(),
      qualifier: json['qualifier'] as String,
    );

Map<String, dynamic> _$BallLocationsToJson(BallLocations instance) =>
    <String, dynamic>{
      'order': instance.order,
      'x': instance.x,
      'y': instance.y,
      'qualifier': instance.qualifier,
    };

PeriodScores _$PeriodScoresFromJson(Map<String, dynamic> json) => PeriodScores(
  homeScore: (json['homeScore'] as num).toInt(),
  awayScore: (json['awayScore'] as num).toInt(),
  type: json['type'] as String,
  number: (json['number'] as num).toInt(),
);

Map<String, dynamic> _$PeriodScoresToJson(PeriodScores instance) =>
    <String, dynamic>{
      'homeScore': instance.homeScore,
      'awayScore': instance.awayScore,
      'type': instance.type,
      'number': instance.number,
    };
