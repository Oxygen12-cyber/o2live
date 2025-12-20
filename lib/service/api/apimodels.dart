import 'package:json_annotation/json_annotation.dart';

part 'apimodels.g.dart';

@JsonSerializable()
class Periods {
  final int first;
  final int second;

  Periods({required this.first, required this.second});

  factory Periods.fromJson(Map<String, dynamic> json) =>
      _$PeriodsFromJson(json);
}

@JsonSerializable()
class Venue {
  final int id;
  final String name;
  final String city;

  Venue({required this.id, required this.name, required this.city});

  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);
}

@JsonSerializable()
class Status {
  final String long;
  final String short;
  final int elapsed;
  final int extra;

  Status({
    required this.long,
    required this.short,
    required this.elapsed,
    required this.extra,
  });

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}

@JsonSerializable()
class Home {
  final int id;
  final String name;
  final String logo;
  final bool winner;

  Home({
    required this.id,
    required this.name,
    required this.logo,
    required this.winner,
  });

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
}

@JsonSerializable()
class Away {
  final int id;
  final String name;
  final String logo;
  final bool winner;

  Away({
    required this.id,
    required this.name,
    required this.logo,
    required this.winner,
  });

  factory Away.fromJson(Map<String, dynamic> json) => _$AwayFromJson(json);
}

@JsonSerializable()
class Halftime {
  final int? home;
  final int? away;

  Halftime({this.home, this.away});

  factory Halftime.fromJson(Map<String, dynamic> json) => _$HalftimeFromJson(json);
}

@JsonSerializable()
class Fulltime {
  final int? home;
  final int? away;

  Fulltime({this.home, this.away});

  factory Fulltime.fromJson(Map<String, dynamic> json) => _$FulltimeFromJson(json);
}

@JsonSerializable()
class Extratime {
  final int? home;
  final int? away;

  Extratime({this.home, this.away});

  factory Extratime.fromJson(Map<String, dynamic> json) => _$ExtratimeFromJson(json);
}

@JsonSerializable()
class Penalty {
  final int? home;
  final int? away;

  Penalty({this.home, this.away});

  factory Penalty.fromJson(Map<String, dynamic> json) => _$PenaltyFromJson(json);
}





// Big classes
@JsonSerializable()
class Fixtures {
  final int id;
  final String? referee;
  final String timezone;
  final int date;
  final int timestamp;
  final Periods periods;
  final Venue venue;
  final Status status;

  Fixtures({
    required this.id,
    this.referee,
    required this.timezone,
    required this.date,
    required this.timestamp,
    required this.periods,
    required this.venue,
    required this.status,
  });

  factory Fixtures.fromJson(Map<String, dynamic> json) =>
      _$FixturesFromJson(json);
}

@JsonSerializable()
class League {
  final int id;
  final String name;
  final String country;
  final String url;
  final String flag;
  final int season;
  final String round;
  final bool standings;

  League({
    required this.id,
    required this.name,
    required this.country,
    required this.url,
    required this.flag,
    required this.season,
    required this.round,
    required this.standings,
  });

  factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);
}

@JsonSerializable()
class Teams {
  final Home home;
  final Away away;

  Teams({required this.home, required this.away});

  factory Teams.fromJson(Map<String, dynamic> json) => _$TeamsFromJson(json);
}

@JsonSerializable()
class Goals {
  final int home;
  final int away;

  Goals({required this.home, required this.away});
  factory Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);
}

@JsonSerializable()
class Score {
  final Halftime? halftime;
  final Fulltime? fulltime;
  final Extratime? extratime;
  final Penalty? penalty;

  Score({this.halftime, this.fulltime, this.extratime, this.penalty});
  factory Score.fromJson(Map<String, dynamic> json) => _$ScoreFromJson(json);
}

@JsonSerializable()
class Data {
  final Fixtures? fixtures;
  final League? league;
  final Teams? teams;
  final Goals? goals;
  final Score? score;

  Data({
    this.fixtures,
    this.league,
    this.teams,
    this.goals,
    this.score,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
