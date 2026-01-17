// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livesportevent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveSportEvent _$LiveSportEventFromJson(Map<String, dynamic> json) =>
    LiveSportEvent(
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
      channels: (json['channels'] as List<dynamic>?)
          ?.map((e) => Channel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LiveSportEventToJson(LiveSportEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start_time': instance.startTime.toIso8601String(),
      'start_time_confirmed': instance.startTimeConfirmed,
      'sport_event_context': instance.sportEventContext,
      'coverage': instance.coverage,
      'competitors': instance.competitors,
      'venue': instance.venue,
      'sport_event_conditions': instance.sportEventConditions,
      'channels': instance.channels,
    };

Channel _$ChannelFromJson(Map<String, dynamic> json) => Channel(
  name: json['name'] as String?,
  url: json['url'] as String?,
  country: json['country'] as String?,
  countryCode: json['country_code'] as String?,
);

Map<String, dynamic> _$ChannelToJson(Channel instance) => <String, dynamic>{
  'name': instance.name,
  'url': instance.url,
  'country': instance.country,
  'country_code': instance.countryCode,
};
