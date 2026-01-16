// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SCompetitors _$SCompetitorsFromJson(Map<String, dynamic> json) => SCompetitors(
  id: json['id'] as String,
  name: json['name'] as String,
  abbreviation: json['abbreviation'] as String,
  qualifier: json['qualifier'] as String,
  statistics: Statistics1.fromJson(json['statistics'] as Map<String, dynamic>),
  players: (json['players'] as List<dynamic>)
      .map((e) => Players.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SCompetitorsToJson(SCompetitors instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abbreviation': instance.abbreviation,
      'qualifier': instance.qualifier,
      'statistics': instance.statistics,
      'players': instance.players,
    };

Totals _$TotalsFromJson(Map<String, dynamic> json) => Totals(
  competitors: (json['competitors'] as List<dynamic>)
      .map((e) => SCompetitors.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TotalsToJson(Totals instance) => <String, dynamic>{
  'competitors': instance.competitors,
};

Statistic _$StatisticFromJson(Map<String, dynamic> json) =>
    Statistic(totals: Totals.fromJson(json['totals'] as Map<String, dynamic>));

Map<String, dynamic> _$StatisticToJson(Statistic instance) => <String, dynamic>{
  'totals': instance.totals,
};
