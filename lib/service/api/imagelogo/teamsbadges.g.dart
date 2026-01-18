// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teamsbadges.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamBadge _$TeamBadgeFromJson(Map<String, dynamic> json) => TeamBadge(
  teams: (json['teams'] as List<dynamic>)
      .map((e) => Teams.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Teams _$TeamsFromJson(Map<String, dynamic> json) => Teams(
  idTeams: json['idTeams'] as String?,
  strBadge: json['strBadge'] as String?,
);
