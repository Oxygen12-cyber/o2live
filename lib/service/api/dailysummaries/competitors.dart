import 'package:json_annotation/json_annotation.dart';

part 'competitors.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Statistics2 {
  final int assists;
  final int cornerKick;
  final int goalsScored;
  final int offsides;
  final int ownGoals;
  final int redCards;
  final int shotsBlocked;
  final int shotsOffTarget;
  final int shotsOnTarget;
  final int substitutedIn;
  final int substitutedOut;
  final int yellowCards;
  final int yellowRedCards;

  Statistics2({
    required this.assists,
    required this.cornerKick,
    required this.goalsScored,
    required this.offsides,
    required this.ownGoals,
    required this.redCards,
    required this.shotsBlocked,
    required this.shotsOffTarget,
    required this.shotsOnTarget,
    required this.substitutedIn,
    required this.substitutedOut,
    required this.yellowCards,
    required this.yellowRedCards,
  });

  factory Statistics2.fromJson(Map<String, dynamic> json) =>
      _$Statistics2FromJson(json);
}

// big classes
@JsonSerializable(fieldRename: FieldRename.snake)
class Players {
  final Statistics2 statistics;
  final String id;
  final String name;
  final bool starter;

  Players({
    required this.statistics,
    required this.id,
    required this.name,
    required this.starter,
  });

  factory Players.fromJson(Map<String, dynamic> json) =>
      _$PlayersFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Statistics1 {
  final int ballPossession;
  final int cardsGiven;
  final int cornerKicks;
  final int fouls;
  final int freeKicks;
  final int goalKicks;
  final int injuries;
  final int offsides;
  final int redCards;
  final int shotsBlocked;
  final int shotsOffTarget;
  final int shotsOnTarget;
  final int shotsSaved;
  final int shotsTotal;
  final int substitutions;
  final int throwIns;
  final int yellowCards;
  final int yellowRedCards;

  Statistics1({
    required this.ballPossession,
    required this.cardsGiven,
    required this.cornerKicks,
    required this.fouls,
    required this.freeKicks,
    required this.goalKicks,
    required this.injuries,
    required this.offsides,
    required this.redCards,
    required this.shotsBlocked,
    required this.shotsOffTarget,
    required this.shotsOnTarget,
    required this.shotsSaved,
    required this.shotsTotal,
    required this.substitutions,
    required this.throwIns,
    required this.yellowCards,
    required this.yellowRedCards,
  });
  factory Statistics1.fromJson(Map<String, dynamic> json) =>
      _$Statistics1FromJson(json);
}
