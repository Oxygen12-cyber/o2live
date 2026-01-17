// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livestatistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveStatistics _$LiveStatisticsFromJson(Map<String, dynamic> json) =>
    LiveStatistics(
      totals: LiveTotals.fromJson(json['totals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LiveStatisticsToJson(LiveStatistics instance) =>
    <String, dynamic>{'totals': instance.totals};

LiveTotals _$LiveTotalsFromJson(Map<String, dynamic> json) => LiveTotals(
  competitors: (json['competitors'] as List<dynamic>)
      .map((e) => LiveCompetitor.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$LiveTotalsToJson(LiveTotals instance) =>
    <String, dynamic>{'competitors': instance.competitors};

LiveCompetitor _$LiveCompetitorFromJson(Map<String, dynamic> json) =>
    LiveCompetitor(
      id: json['id'] as String,
      name: json['name'] as String,
      abbreviation: json['abbreviation'] as String,
      qualifier: json['qualifier'] as String,
      statistics: LiveCompetitorStats.fromJson(
        json['statistics'] as Map<String, dynamic>,
      ),
      players: (json['players'] as List<dynamic>)
          .map((e) => LivePlayer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LiveCompetitorToJson(LiveCompetitor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abbreviation': instance.abbreviation,
      'qualifier': instance.qualifier,
      'statistics': instance.statistics,
      'players': instance.players,
    };

LiveCompetitorStats _$LiveCompetitorStatsFromJson(Map<String, dynamic> json) =>
    LiveCompetitorStats(
      ballPossession: (json['ball_possession'] as num?)?.toInt(),
      cardsGiven: (json['cards_given'] as num?)?.toInt(),
      cornerKicks: (json['corner_kicks'] as num?)?.toInt(),
      fouls: (json['fouls'] as num?)?.toInt(),
      freeKicks: (json['free_kicks'] as num?)?.toInt(),
      goalKicks: (json['goal_kicks'] as num?)?.toInt(),
      injuries: (json['injuries'] as num?)?.toInt(),
      offsides: (json['offsides'] as num?)?.toInt(),
      redCards: (json['red_cards'] as num?)?.toInt(),
      shotsBlocked: (json['shots_blocked'] as num?)?.toInt(),
      shotsOffTarget: (json['shots_off_target'] as num?)?.toInt(),
      shotsOnTarget: (json['shots_on_target'] as num?)?.toInt(),
      shotsSaved: (json['shots_saved'] as num?)?.toInt(),
      shotsTotal: (json['shots_total'] as num?)?.toInt(),
      substitutions: (json['substitutions'] as num?)?.toInt(),
      throwIns: (json['throw_ins'] as num?)?.toInt(),
      yellowCards: (json['yellow_cards'] as num?)?.toInt(),
      yellowRedCards: (json['yellow_red_cards'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LiveCompetitorStatsToJson(
  LiveCompetitorStats instance,
) => <String, dynamic>{
  'ball_possession': instance.ballPossession,
  'cards_given': instance.cardsGiven,
  'corner_kicks': instance.cornerKicks,
  'fouls': instance.fouls,
  'free_kicks': instance.freeKicks,
  'goal_kicks': instance.goalKicks,
  'injuries': instance.injuries,
  'offsides': instance.offsides,
  'red_cards': instance.redCards,
  'shots_blocked': instance.shotsBlocked,
  'shots_off_target': instance.shotsOffTarget,
  'shots_on_target': instance.shotsOnTarget,
  'shots_saved': instance.shotsSaved,
  'shots_total': instance.shotsTotal,
  'substitutions': instance.substitutions,
  'throw_ins': instance.throwIns,
  'yellow_cards': instance.yellowCards,
  'yellow_red_cards': instance.yellowRedCards,
};

LivePlayer _$LivePlayerFromJson(Map<String, dynamic> json) => LivePlayer(
  statistics: LivePlayerStats.fromJson(
    json['statistics'] as Map<String, dynamic>,
  ),
  id: json['id'] as String,
  name: json['name'] as String,
  starter: json['starter'] as bool?,
);

Map<String, dynamic> _$LivePlayerToJson(LivePlayer instance) =>
    <String, dynamic>{
      'statistics': instance.statistics,
      'id': instance.id,
      'name': instance.name,
      'starter': instance.starter,
    };

LivePlayerStats _$LivePlayerStatsFromJson(Map<String, dynamic> json) =>
    LivePlayerStats(
      assists: (json['assists'] as num?)?.toInt(),
      cornerKicks: (json['corner_kicks'] as num?)?.toInt(),
      goalsScored: (json['goals_scored'] as num?)?.toInt(),
      goalsByHead: (json['goals_by_head'] as num?)?.toInt(),
      offsides: (json['offsides'] as num?)?.toInt(),
      ownGoals: (json['own_goals'] as num?)?.toInt(),
      redCards: (json['red_cards'] as num?)?.toInt(),
      shotsBlocked: (json['shots_blocked'] as num?)?.toInt(),
      shotsOffTarget: (json['shots_off_target'] as num?)?.toInt(),
      shotsOnTarget: (json['shots_on_target'] as num?)?.toInt(),
      substitutedIn: (json['substituted_in'] as num?)?.toInt(),
      substitutedOut: (json['substituted_out'] as num?)?.toInt(),
      yellowCards: (json['yellow_cards'] as num?)?.toInt(),
      yellowRedCards: (json['yellow_red_cards'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LivePlayerStatsToJson(LivePlayerStats instance) =>
    <String, dynamic>{
      'assists': instance.assists,
      'corner_kicks': instance.cornerKicks,
      'goals_scored': instance.goalsScored,
      'goals_by_head': instance.goalsByHead,
      'offsides': instance.offsides,
      'own_goals': instance.ownGoals,
      'red_cards': instance.redCards,
      'shots_blocked': instance.shotsBlocked,
      'shots_off_target': instance.shotsOffTarget,
      'shots_on_target': instance.shotsOnTarget,
      'substituted_in': instance.substitutedIn,
      'substituted_out': instance.substitutedOut,
      'yellow_cards': instance.yellowCards,
      'yellow_red_cards': instance.yellowRedCards,
    };
