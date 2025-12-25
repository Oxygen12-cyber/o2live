import 'package:json_annotation/json_annotation.dart';

part 'sporteventcontext.g.dart';

@JsonSerializable()
class SportEventContext {
  final Sport? sport;
  final Category? category;
  final Competition? competition;
  final Season? season;
  final Stage? stage;
  final Round? round;
  final List<Groups>? groups;

  SportEventContext({
    required this.sport,
    required this.category,
    required this.competition,
    required this.season,
    required this.stage,
    required this.round,
    required this.groups,
  });

  factory SportEventContext.fromJson(Map<String, dynamic> json) =>
      _$SportEventContextFromJson(json);
}

@JsonSerializable()
class Sport {
  final String id;
  final String name;

  Sport({required this.id, required this.name});

  factory Sport.fromJson(Map<String, dynamic> json) =>
      _$SportFromJson(json);

}

@JsonSerializable(fieldRename: FieldRename.snake)
class Category {
  final String? id;
  final String? name;

  @JsonKey(name: 'country_code')
  final String? countryCode;

  Category({
    required this.id,
    required this.name,
    required this.countryCode,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@JsonSerializable()
class Competition {
  final String? id;
  final String? name;

  @JsonKey(name: 'parent_id')
  final String? parentId;

  final String? gender;

  Competition({
    required this.id,
    required this.name,
    required this.parentId,
    required this.gender,
  });

  factory Competition.fromJson(Map<String, dynamic> json) =>
      _$CompetitionFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Season {
  final String? id;
  final String? name;
  final String? startDate;
  final String? endDate;
  final String? year;
  final String? competitionId;

  Season({
    required this.id,
    required this.name,
    required this.startDate,
    required this.endDate,
    required this.year,
    required this.competitionId,
  });

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Stage {
  final int? order;
  final String? type;
  final String? phase;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? year;

  Stage({
    required this.order,
    required this.type,
    required this.phase,
    required this.startDate,
    required this.endDate,
    required this.year,
  });

  factory Stage.fromJson(Map<String, dynamic> json) => _$StageFromJson(json);
}

@JsonSerializable()
class Round {
  final int? number;

  Round({required this.number});

  factory Round.fromJson(Map<String, dynamic> json) => _$RoundFromJson(json);
}

@JsonSerializable()
class Groups {
  final String? id;
  final String? name;

  Groups({required this.id, required this.name});

  factory Groups.fromJson(Map<String, dynamic> json) => _$GroupsFromJson(json);
}
