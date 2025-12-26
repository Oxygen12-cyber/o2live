import 'package:json_annotation/json_annotation.dart';
import 'package:o2live/service/api/sportevents/sporteventcontext.dart';

part 'sportevent.g.dart';

// Main
@JsonSerializable(fieldRename: FieldRename.snake)
class SportEvent {
  final String id;
  final DateTime startTime;
  final bool startTimeConfirmed;
  final SportEventContext? sportEventContext;
  final Coverage? coverage;
  final List<Competitors>? competitors;
  final Venue? venue;
  final SportEventConditions? sportEventConditions;

  SportEvent({
    required this.id,
    required this.startTime,
    required this.startTimeConfirmed,
    required this.sportEventContext,
    required this.coverage,
    required this.competitors,
    required this.venue,
    required this.sportEventConditions,
  });

  factory SportEvent.fromJson(Map<String, dynamic> json) =>
      _$SportEventFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Venue {
  final String id;
  final String name;
  final int? capacity;
  final String? cityName;
  final String countryName;
  final String?mapCoordinates;
  final String? countryCode;
  final String? timeZone;

  Venue({
    required this.id,
    required this.name,
    required this.capacity,
    required this.cityName,
    required this.countryName,
    required this.mapCoordinates,
    required this.countryCode,
    required this.timeZone,
  });

  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);
}

@JsonSerializable()
class Competitors {
  final String? id;
  final String? name;
  final String? country;

  @JsonKey(name: 'country_code')
  final String? countryCode;
  
  final String? abbreviation;
  final String? qualifier;
  final String? gender;

  Competitors({
    required this.id,
    required this.name,
    required this.country,
    required this.countryCode,
    required this.abbreviation,
    required this.qualifier,
    required this.gender,
  });

  factory Competitors.fromJson(Map<String, dynamic> json) =>
      _$CompetitorsFromJson(json);
}

// Coverage
@JsonSerializable(fieldRename: FieldRename.snake)
class Coverage {
  final String? type;
  final SportEventProperties sportEventProperties;

  Coverage({required this.type, required this.sportEventProperties});

  factory Coverage.fromJson(Map<String, dynamic> json) =>
      _$CoverageFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class SportEventProperties {
  final bool? lineups;
  final bool? formations;
  final bool? venue;
  final bool? extendedPlayByPlay;
  final bool? extendedPlayerStats;
  final bool? extendedTeamStats;
  final String? lineupsAvailability;
  final bool? ballspotting;
  final bool? commentary;
  final bool? funFacts;
  final bool? goalScorers;
  final bool? goalScorersLive;
  final String? scores;
  final bool? gameClock;
  final bool? deeperPlayByPlay;
  final bool? deeperPlayerStats;
  final bool? deeperTeamStats;
  final bool? basicPlayByPlay;
  final bool? basicPlayerStats;
  final bool? basicTeamStats;

  SportEventProperties({
    required this.lineups,
    required this.formations,
    required this.venue,
    required this.extendedPlayByPlay,
    required this.extendedPlayerStats,
    required this.extendedTeamStats,
    required this.lineupsAvailability,
    required this.ballspotting,
    required this.commentary,
    required this.funFacts,
    required this.goalScorers,
    required this.goalScorersLive,
    required this.scores,
    required this.gameClock,
    required this.deeperPlayByPlay,
    required this.deeperPlayerStats,
    required this.deeperTeamStats,
    required this.basicPlayByPlay,
    required this.basicPlayerStats,
    required this.basicTeamStats,
  });

  factory SportEventProperties.fromJson(Map<String, dynamic> json) =>
      _$SportEventPropertiesFromJson(json);
}

//event conditions
@JsonSerializable()
class SportEventConditions {
  final List<Referee>? referee;
  final Weather? weather;
  final Ground? ground;
  final Lineups? lineups;

  SportEventConditions({
    required this.referee,
    required this.weather,
    required this.ground,
    required this.lineups,
  });

  factory SportEventConditions.fromJson(Map<String, dynamic> json) =>
      _$SportEventConditionsFromJson(json);
}

@JsonSerializable()
class Referee {
  final String? id;
  final String? name;
  final String? nationality;

  @JsonKey(name: 'country_code')
  final String? countryCode;

  final String? type;

  Referee({
    required this.id,
    required this.name,
    required this.nationality,
    required this.countryCode,
    required this.type,
  });

  factory Referee.fromJson(Map<String, dynamic> json) =>
      _$RefereeFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Weather {
  final String? pitchConditions;
  final String? overallConditions;

  Weather({required this.pitchConditions, required this.overallConditions});

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@JsonSerializable()
class Ground {
  final bool neutral;

  Ground({required this.neutral});

  factory Ground.fromJson(Map<String, dynamic> json) => _$GroundFromJson(json);
}

@JsonSerializable()
class Lineups {
  final bool confirmed;

  Lineups({required this.confirmed});

  factory Lineups.fromJson(Map<String, dynamic> json) =>
      _$LineupsFromJson(json);
}
