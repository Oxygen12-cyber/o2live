// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sportevent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SportEvent _$SportEventFromJson(Map<String, dynamic> json) => SportEvent(
  id: json['id'] as String,
  startTime: json['startTime'] as String,
  startTimeConfirmed: json['startTimeConfirmed'] as String,
  sportEventContext: SportEventContext.fromJson(
    json['sportEventContext'] as Map<String, dynamic>,
  ),
  coverage: Coverage.fromJson(json['coverage'] as Map<String, dynamic>),
  competitors: (json['competitors'] as List<dynamic>)
      .map((e) => Competitors.fromJson(e as Map<String, dynamic>))
      .toList(),
  venue: Venue.fromJson(json['venue'] as Map<String, dynamic>),
  sportEventConditions: SportEventConditions.fromJson(
    json['sportEventConditions'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$SportEventToJson(SportEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startTime': instance.startTime,
      'startTimeConfirmed': instance.startTimeConfirmed,
      'sportEventContext': instance.sportEventContext,
      'coverage': instance.coverage,
      'competitors': instance.competitors,
      'venue': instance.venue,
      'sportEventConditions': instance.sportEventConditions,
    };

Venue _$VenueFromJson(Map<String, dynamic> json) => Venue(
  id: json['id'] as String,
  name: json['name'] as String,
  capacity: (json['capacity'] as num).toInt(),
  cityName: json['cityName'] as String,
  countryName: json['countryName'] as String,
  mapCoordinates: json['mapCoordinates'] as String,
  countryCode: json['countryCode'] as String,
  timeZone: json['timeZone'] as String,
);

Map<String, dynamic> _$VenueToJson(Venue instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'capacity': instance.capacity,
  'cityName': instance.cityName,
  'countryName': instance.countryName,
  'mapCoordinates': instance.mapCoordinates,
  'countryCode': instance.countryCode,
  'timeZone': instance.timeZone,
};

Competitors _$CompetitorsFromJson(Map<String, dynamic> json) => Competitors(
  id: json['id'] as String,
  name: json['name'] as String,
  country: json['country'] as String,
  countryCode: json['countryCode'] as String,
  abbreviation: json['abbreviation'] as String,
  qualifier: json['qualifier'] as String,
  gender: json['gender'] as String,
);

Map<String, dynamic> _$CompetitorsToJson(Competitors instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'countryCode': instance.countryCode,
      'abbreviation': instance.abbreviation,
      'qualifier': instance.qualifier,
      'gender': instance.gender,
    };

Coverage _$CoverageFromJson(Map<String, dynamic> json) => Coverage(
  type: json['type'] as String,
  sportEventProperties: SportEventProperties.fromJson(
    json['sportEventProperties'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CoverageToJson(Coverage instance) => <String, dynamic>{
  'type': instance.type,
  'sportEventProperties': instance.sportEventProperties,
};

SportEventProperties _$SportEventPropertiesFromJson(
  Map<String, dynamic> json,
) => SportEventProperties(
  lineups: json['lineups'] as bool,
  formations: json['formations'] as bool,
  venue: json['venue'] as bool,
  extendedPlayByPlay: json['extendedPlayByPlay'] as bool,
  extendedPlayerStats: json['extendedPlayerStats'] as bool,
  extendedTeamStats: json['extendedTeamStats'] as bool,
  lineupsAvailability: json['lineupsAvailability'] as String,
  ballSpotting: json['ballSpotting'] as bool,
  commentary: json['commentary'] as bool,
  funFacts: json['funFacts'] as bool,
  goalScorers: json['goalScorers'] as bool,
  goalScorersLive: json['goalScorersLive'] as bool,
  scores: json['scores'] as String,
  gameClock: json['gameClock'] as bool,
  deeperPlayByPlay: json['deeperPlayByPlay'] as bool,
  deeperPlayerStats: json['deeperPlayerStats'] as bool,
  deeperTeamStats: json['deeperTeamStats'] as bool,
  basicPlayByPlay: json['basicPlayByPlay'] as bool,
  basicPlayerStats: json['basicPlayerStats'] as bool,
  basicTeamStats: json['basicTeamStats'] as bool,
);

Map<String, dynamic> _$SportEventPropertiesToJson(
  SportEventProperties instance,
) => <String, dynamic>{
  'lineups': instance.lineups,
  'formations': instance.formations,
  'venue': instance.venue,
  'extendedPlayByPlay': instance.extendedPlayByPlay,
  'extendedPlayerStats': instance.extendedPlayerStats,
  'extendedTeamStats': instance.extendedTeamStats,
  'lineupsAvailability': instance.lineupsAvailability,
  'ballSpotting': instance.ballSpotting,
  'commentary': instance.commentary,
  'funFacts': instance.funFacts,
  'goalScorers': instance.goalScorers,
  'goalScorersLive': instance.goalScorersLive,
  'scores': instance.scores,
  'gameClock': instance.gameClock,
  'deeperPlayByPlay': instance.deeperPlayByPlay,
  'deeperPlayerStats': instance.deeperPlayerStats,
  'deeperTeamStats': instance.deeperTeamStats,
  'basicPlayByPlay': instance.basicPlayByPlay,
  'basicPlayerStats': instance.basicPlayerStats,
  'basicTeamStats': instance.basicTeamStats,
};

SportEventConditions _$SportEventConditionsFromJson(
  Map<String, dynamic> json,
) => SportEventConditions(
  referee: (json['referee'] as List<dynamic>)
      .map((e) => Referee.fromJson(e as Map<String, dynamic>))
      .toList(),
  weather: Weather.fromJson(json['weather'] as Map<String, dynamic>),
  ground: Ground.fromJson(json['ground'] as Map<String, dynamic>),
  lineups: Lineups.fromJson(json['lineups'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SportEventConditionsToJson(
  SportEventConditions instance,
) => <String, dynamic>{
  'referee': instance.referee,
  'weather': instance.weather,
  'ground': instance.ground,
  'lineups': instance.lineups,
};

Referee _$RefereeFromJson(Map<String, dynamic> json) => Referee(
  id: json['id'] as String,
  name: json['name'] as String,
  nationality: json['nationality'] as String,
  countryCode: json['countryCode'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$RefereeToJson(Referee instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'nationality': instance.nationality,
  'countryCode': instance.countryCode,
  'type': instance.type,
};

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
  pitchConditions: json['pitchConditions'] as String,
  overallConditions: json['overallConditions'] as String,
);

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
  'pitchConditions': instance.pitchConditions,
  'overallConditions': instance.overallConditions,
};

Ground _$GroundFromJson(Map<String, dynamic> json) =>
    Ground(neutral: json['neutral'] as bool);

Map<String, dynamic> _$GroundToJson(Ground instance) => <String, dynamic>{
  'neutral': instance.neutral,
};

Lineups _$LineupsFromJson(Map<String, dynamic> json) =>
    Lineups(confirmed: json['confirmed'] as bool);

Map<String, dynamic> _$LineupsToJson(Lineups instance) => <String, dynamic>{
  'confirmed': instance.confirmed,
};
