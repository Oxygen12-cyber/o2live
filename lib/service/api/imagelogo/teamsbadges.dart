import 'package:json_annotation/json_annotation.dart';

part 'teamsbadges.g.dart';

@JsonSerializable(createToJson: false)
class TeamBadge {
  final List<Teams> teams;

  TeamBadge({required this.teams});

  factory TeamBadge.fromJson(Map<String, dynamic> json) => _$TeamBadgeFromJson(json);

}

@JsonSerializable(createToJson: false)
class Teams {
  @JsonKey(name: 'idTeams')
  final String? idTeams;

  @JsonKey(name: 'strBadge')
  final String? strBadge;

  Teams({required this.idTeams, required this.strBadge});

  factory Teams.fromJson(Map<String, dynamic> json) => _$TeamsFromJson(json);
}
