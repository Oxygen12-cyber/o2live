// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competitors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Statistics2 _$Statistics2FromJson(Map<String, dynamic> json) => Statistics2(
  assists: (json['assists'] as num).toInt(),
  cornerKick: (json['corner_kick'] as num).toInt(),
  goalsScored: (json['goals_scored'] as num).toInt(),
  offsides: (json['offsides'] as num).toInt(),
  ownGoals: (json['own_goals'] as num).toInt(),
  redCards: (json['red_cards'] as num).toInt(),
  shotsBlocked: (json['shots_blocked'] as num).toInt(),
  shotsOffTarget: (json['shots_off_target'] as num).toInt(),
  shotsOnTarget: (json['shots_on_target'] as num).toInt(),
  substitutedIn: (json['substituted_in'] as num).toInt(),
  substitutedOut: (json['substituted_out'] as num).toInt(),
  yellowCards: (json['yellow_cards'] as num).toInt(),
  yellowRedCards: (json['yellow_red_cards'] as num).toInt(),
);

Map<String, dynamic> _$Statistics2ToJson(Statistics2 instance) =>
    <String, dynamic>{
      'assists': instance.assists,
      'corner_kick': instance.cornerKick,
      'goals_scored': instance.goalsScored,
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

Players _$PlayersFromJson(Map<String, dynamic> json) => Players(
  statistics: Statistics2.fromJson(json['statistics'] as Map<String, dynamic>),
  id: json['id'] as String,
  name: json['name'] as String,
  starter: json['starter'] as bool,
);

Map<String, dynamic> _$PlayersToJson(Players instance) => <String, dynamic>{
  'statistics': instance.statistics,
  'id': instance.id,
  'name': instance.name,
  'starter': instance.starter,
};

Statistics1 _$Statistics1FromJson(Map<String, dynamic> json) => Statistics1(
  ballPossession: (json['ball_possession'] as num).toInt(),
  cardsGiven: (json['cards_given'] as num).toInt(),
  cornerKicks: (json['corner_kicks'] as num).toInt(),
  fouls: (json['fouls'] as num).toInt(),
  freeKicks: (json['free_kicks'] as num).toInt(),
  goalKicks: (json['goal_kicks'] as num).toInt(),
  injuries: (json['injuries'] as num).toInt(),
  offsides: (json['offsides'] as num).toInt(),
  redCards: (json['red_cards'] as num).toInt(),
  shotsBlocked: (json['shots_blocked'] as num).toInt(),
  shotsOffTarget: (json['shots_off_target'] as num).toInt(),
  shotsOnTarget: (json['shots_on_target'] as num).toInt(),
  shotsSaved: (json['shots_saved'] as num).toInt(),
  shotsTotal: (json['shots_total'] as num).toInt(),
  substitutions: (json['substitutions'] as num).toInt(),
  throwIns: (json['throw_ins'] as num).toInt(),
  yellowCards: (json['yellow_cards'] as num).toInt(),
  yellowRedCards: (json['yellow_red_cards'] as num).toInt(),
);

Map<String, dynamic> _$Statistics1ToJson(Statistics1 instance) =>
    <String, dynamic>{
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
