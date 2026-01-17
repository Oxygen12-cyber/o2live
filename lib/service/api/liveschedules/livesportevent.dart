import 'package:json_annotation/json_annotation.dart';
import 'package:o2live/service/api/dailyschedules/sportevent.dart';
import 'package:o2live/service/api/dailyschedules/sporteventcontext.dart';

part 'livesportevent.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LiveSportEvent {
  final String id;
  final DateTime startTime;
  final bool startTimeConfirmed;
  final SportEventContext? sportEventContext;
  final Coverage? coverage;
  final List<Competitors>? competitors;
  final Venue? venue;
  final SportEventConditions? sportEventConditions;
  final List<Channel>? channels;

  LiveSportEvent({
    required this.id,
    required this.startTime,
    required this.startTimeConfirmed,
    required this.sportEventContext,
    required this.coverage,
    required this.competitors,
    required this.venue,
    required this.sportEventConditions,
    required this.channels,
  });

  factory LiveSportEvent.fromJson(Map<String, dynamic> json) =>
      _$LiveSportEventFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Channel {
  final String? name;
  final String? url;
  final String? country;
  @JsonKey(name: 'country_code')
  final String? countryCode;

  Channel({
    required this.name,
    required this.url,
    required this.country,
    required this.countryCode,
  });

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
}
