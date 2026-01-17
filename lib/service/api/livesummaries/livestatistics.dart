import 'package:json_annotation/json_annotation.dart';

part 'livestatistics.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LiveStatistics {
  final LiveTotals totals;

  LiveStatistics({required this.totals});

  factory LiveStatistics.fromJson(Map<String, dynamic> json) =>
      _$LiveStatisticsFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LiveTotals {
  final List<LiveCompetitor> competitors;

  LiveTotals({required this.competitors});

  factory LiveTotals.fromJson(Map<String, dynamic> json) =>
      _$LiveTotalsFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LiveCompetitor {
  final String id;
  final String name;
  final String abbreviation;
  final String qualifier;
  final LiveCompetitorStats statistics;
  final List<LivePlayer> players;

  LiveCompetitor({
    required this.id,
    required this.name,
    required this.abbreviation,
    required this.qualifier,
    required this.statistics,
    required this.players,
  });

  factory LiveCompetitor.fromJson(Map<String, dynamic> json) =>
      _$LiveCompetitorFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LiveCompetitorStats {
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

  LiveCompetitorStats({
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

  factory LiveCompetitorStats.fromJson(Map<String, dynamic> json) =>
      _$LiveCompetitorStatsFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LivePlayer {
  final LivePlayerStats statistics;
  final String id;
  final String name;
  final bool? starter;

  LivePlayer({
    required this.statistics,
    required this.id,
    required this.name,
    required this.starter,
  });

  factory LivePlayer.fromJson(Map<String, dynamic> json) =>
      _$LivePlayerFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LivePlayerStats {
  final int? assists;
  final int? cornerKicks;
  final int? goalsScored;
  final int? goalsByHead;
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

  LivePlayerStats({
    required this.assists,
    required this.cornerKicks,
    required this.goalsScored,
    required this.goalsByHead,
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

  factory LivePlayerStats.fromJson(Map<String, dynamic> json) =>
      _$LivePlayerStatsFromJson(json);
}
