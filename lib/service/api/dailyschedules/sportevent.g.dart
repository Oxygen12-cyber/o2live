// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sportevent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SportEvent _$SportEventFromJson(Map<String, dynamic> json) => SportEvent(
  id: json['id'] as String,
  startTime: DateTime.parse(json['start_time'] as String),
  startTimeConfirmed: json['start_time_confirmed'] as bool,
  sportEventContext: json['sport_event_context'] == null
      ? null
      : SportEventContext.fromJson(
          json['sport_event_context'] as Map<String, dynamic>,
        ),
  coverage: json['coverage'] == null
      ? null
      : Coverage.fromJson(json['coverage'] as Map<String, dynamic>),
  competitors: (json['competitors'] as List<dynamic>?)
      ?.map((e) => Competitors.fromJson(e as Map<String, dynamic>))
      .toList(),
  venue: json['venue'] == null
      ? null
      : Venue.fromJson(json['venue'] as Map<String, dynamic>),
  sportEventConditions: json['sport_event_conditions'] == null
      ? null
      : SportEventConditions.fromJson(
          json['sport_event_conditions'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$SportEventToJson(SportEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start_time': instance.startTime.toIso8601String(),
      'start_time_confirmed': instance.startTimeConfirmed,
      'sport_event_context': instance.sportEventContext,
      'coverage': instance.coverage,
      'competitors': instance.competitors,
      'venue': instance.venue,
      'sport_event_conditions': instance.sportEventConditions,
    };

Venue _$VenueFromJson(Map<String, dynamic> json) => Venue(
  id: json['id'] as String,
  name: json['name'] as String,
  capacity: (json['capacity'] as num?)?.toInt(),
  cityName: json['city_name'] as String?,
  countryName: json['country_name'] as String,
  mapCoordinates: json['map_coordinates'] as String?,
  countryCode: json['country_code'] as String?,
  timeZone: json['time_zone'] as String?,
);

Map<String, dynamic> _$VenueToJson(Venue instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'capacity': instance.capacity,
  'city_name': instance.cityName,
  'country_name': instance.countryName,
  'map_coordinates': instance.mapCoordinates,
  'country_code': instance.countryCode,
  'time_zone': instance.timeZone,
};

Competitors _$CompetitorsFromJson(Map<String, dynamic> json) => Competitors(
  id: json['id'] as String?,
  name: json['name'] as String?,
  country: json['country'] as String?,
  countryCode: json['country_code'] as String?,
  abbreviation: json['abbreviation'] as String?,
  qualifier: json['qualifier'] as String?,
  gender: json['gender'] as String?,
);

Map<String, dynamic> _$CompetitorsToJson(Competitors instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'country_code': instance.countryCode,
      'abbreviation': instance.abbreviation,
      'qualifier': instance.qualifier,
      'gender': instance.gender,
    };

Coverage _$CoverageFromJson(Map<String, dynamic> json) => Coverage(
  type: json['type'] as String?,
  sportEventProperties: SportEventProperties.fromJson(
    json['sport_event_properties'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CoverageToJson(Coverage instance) => <String, dynamic>{
  'type': instance.type,
  'sport_event_properties': instance.sportEventProperties,
};

SportEventProperties _$SportEventPropertiesFromJson(
  Map<String, dynamic> json,
) => SportEventProperties(
  lineups: json['lineups'] as bool?,
  formations: json['formations'] as bool?,
  venue: json['venue'] as bool?,
  extendedPlayByPlay: json['extended_play_by_play'] as bool?,
  extendedPlayerStats: json['extended_player_stats'] as bool?,
  extendedTeamStats: json['extended_team_stats'] as bool?,
  lineupsAvailability: json['lineups_availability'] as String?,
  ballspotting: json['ballspotting'] as bool?,
  commentary: json['commentary'] as bool?,
  funFacts: json['fun_facts'] as bool?,
  goalScorers: json['goal_scorers'] as bool?,
  goalScorersLive: json['goal_scorers_live'] as bool?,
  scores: json['scores'] as String?,
  gameClock: json['game_clock'] as bool?,
  deeperPlayByPlay: json['deeper_play_by_play'] as bool?,
  deeperPlayerStats: json['deeper_player_stats'] as bool?,
  deeperTeamStats: json['deeper_team_stats'] as bool?,
  basicPlayByPlay: json['basic_play_by_play'] as bool?,
  basicPlayerStats: json['basic_player_stats'] as bool?,
  basicTeamStats: json['basic_team_stats'] as bool?,
);

Map<String, dynamic> _$SportEventPropertiesToJson(
  SportEventProperties instance,
) => <String, dynamic>{
  'lineups': instance.lineups,
  'formations': instance.formations,
  'venue': instance.venue,
  'extended_play_by_play': instance.extendedPlayByPlay,
  'extended_player_stats': instance.extendedPlayerStats,
  'extended_team_stats': instance.extendedTeamStats,
  'lineups_availability': instance.lineupsAvailability,
  'ballspotting': instance.ballspotting,
  'commentary': instance.commentary,
  'fun_facts': instance.funFacts,
  'goal_scorers': instance.goalScorers,
  'goal_scorers_live': instance.goalScorersLive,
  'scores': instance.scores,
  'game_clock': instance.gameClock,
  'deeper_play_by_play': instance.deeperPlayByPlay,
  'deeper_player_stats': instance.deeperPlayerStats,
  'deeper_team_stats': instance.deeperTeamStats,
  'basic_play_by_play': instance.basicPlayByPlay,
  'basic_player_stats': instance.basicPlayerStats,
  'basic_team_stats': instance.basicTeamStats,
};

SportEventConditions _$SportEventConditionsFromJson(
  Map<String, dynamic> json,
) => SportEventConditions(
  referee: (json['referee'] as List<dynamic>?)
      ?.map((e) => Referee.fromJson(e as Map<String, dynamic>))
      .toList(),
  weather: json['weather'] == null
      ? null
      : Weather.fromJson(json['weather'] as Map<String, dynamic>),
  ground: json['ground'] == null
      ? null
      : Ground.fromJson(json['ground'] as Map<String, dynamic>),
  lineups: json['lineups'] == null
      ? null
      : Lineups.fromJson(json['lineups'] as Map<String, dynamic>),
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
  id: json['id'] as String?,
  name: json['name'] as String?,
  nationality: json['nationality'] as String?,
  countryCode: json['country_code'] as String?,
  type: json['type'] as String?,
);

Map<String, dynamic> _$RefereeToJson(Referee instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'nationality': instance.nationality,
  'country_code': instance.countryCode,
  'type': instance.type,
};

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
  pitchConditions: json['pitch_conditions'] as String?,
  overallConditions: json['overall_conditions'] as String?,
);

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
  'pitch_conditions': instance.pitchConditions,
  'overall_conditions': instance.overallConditions,
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
