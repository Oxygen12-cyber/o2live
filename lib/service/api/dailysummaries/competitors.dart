import 'package:json_annotation/json_annotation.dart';


part 'competitors.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Statistics2 {
  final int? assists;
  final int? cornerKick;
  final int? goalsScored;
  final int? offsides;
  final int? ownGoals;
  final int? redCards;
  final int? shotsBlocked;
  final int? shotsOffTarget;
  final int? shotsOnTarget;
  final int? substitutedIn;
  final int? substitutedOut;
  final int? yellowCards;
  final int? yellowRedCards;

  Statistics2({
    this.assists,
    this.cornerKick,
    this.goalsScored,
    this.offsides,
    this.ownGoals,
    this.redCards,
    this.shotsBlocked,
    this.shotsOffTarget,
    this.shotsOnTarget,
    this.substitutedIn,
    this.substitutedOut,
    this.yellowCards,
    this.yellowRedCards,
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
  final int? ballPossession;
  final int? cardsGiven;
  final int? cornerKicks;
  final int? fouls;
  final int? freeKicks;
  final int? goalKicks;
  final int? injuries;
  final int? offsides;
  final int? redCards;
  final int? shotsBlocked;
  final int? shotsOffTarget;
  final int? shotsOnTarget;
  final int? shotsSaved;
  final int? shotsTotal;
  final int? substitutions;
  final int? throwIns;
  final int? yellowCards;
  final int? yellowRedCards;

  Statistics1({
    this.ballPossession,
    this.cardsGiven,
    this.cornerKicks,
    this.fouls,
    this.freeKicks,
    this.goalKicks,
    this.injuries,
    this.offsides,
    this.redCards,
    this.shotsBlocked,
    this.shotsOffTarget,
    this.shotsOnTarget,
    this.shotsSaved,
    this.shotsTotal,
    this.substitutions,
    this.throwIns,
    this.yellowCards,
    this.yellowRedCards,
  });
  factory Statistics1.fromJson(Map<String, dynamic> json) =>
      _$Statistics1FromJson(json);
}
