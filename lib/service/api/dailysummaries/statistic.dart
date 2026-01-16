import 'package:json_annotation/json_annotation.dart';
import 'package:o2live/service/api/dailysummaries/competitors.dart';

part 'statistic.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SCompetitors {
  final String id;
  final String name;
  final String abbreviation;
  final String qualifier;
  final Statistics1 statistics;
  final List<Players> players;

  SCompetitors({
    required this.id,
    required this.name,
    required this.abbreviation,
    required this.qualifier,
    required this.statistics,
    required this.players,
  });
  factory SCompetitors.fromJson(Map<String, dynamic> json) =>
      _$SCompetitorsFromJson(json);
}

// big classes
@JsonSerializable(fieldRename: FieldRename.snake)
class Totals {
  final List<SCompetitors> competitors;

  Totals({required this.competitors});
  factory Totals.fromJson(Map<String, dynamic> json) =>
      _$TotalsFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Statistic {
  final Totals totals;

  Statistic({required this.totals});
  factory Statistic.fromJson(Map<String, dynamic> json) =>
      _$StatisticFromJson(json);
}
