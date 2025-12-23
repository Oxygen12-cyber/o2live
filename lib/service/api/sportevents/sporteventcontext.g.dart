// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sporteventcontext.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SportEventContext _$SportEventContextFromJson(Map<String, dynamic> json) =>
    SportEventContext(
      sport: Sport.fromJson(json['sport'] as Map<String, dynamic>),
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      competition: Competition.fromJson(
        json['competition'] as Map<String, dynamic>,
      ),
      season: Season.fromJson(json['season'] as Map<String, dynamic>),
      stage: Stage.fromJson(json['stage'] as Map<String, dynamic>),
      round: Round.fromJson(json['round'] as Map<String, dynamic>),
      groups: (json['groups'] as List<dynamic>)
          .map((e) => Groups.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SportEventContextToJson(SportEventContext instance) =>
    <String, dynamic>{
      'sport': instance.sport,
      'category': instance.category,
      'competition': instance.competition,
      'season': instance.season,
      'stage': instance.stage,
      'round': instance.round,
      'groups': instance.groups,
    };

Sport _$SportFromJson(Map<String, dynamic> json) =>
    Sport(id: json['id'] as String, name: json['name'] as String);

Map<String, dynamic> _$SportToJson(Sport instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
  id: json['id'] as String,
  name: json['name'] as String,
  countryCode: json['countryCode'] as String,
);

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'countryCode': instance.countryCode,
};

Competition _$CompetitionFromJson(Map<String, dynamic> json) => Competition(
  id: json['id'] as String,
  name: json['name'] as String,
  parentId: json['parentId'] as String,
  gender: json['gender'] as String,
);

Map<String, dynamic> _$CompetitionToJson(Competition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parentId': instance.parentId,
      'gender': instance.gender,
    };

Season _$SeasonFromJson(Map<String, dynamic> json) => Season(
  id: json['id'] as String,
  name: json['name'] as String,
  startDate: json['startDate'] as String,
  endDate: json['endDate'] as String,
  year: json['year'] as String,
  competitionId: json['competitionId'] as String,
);

Map<String, dynamic> _$SeasonToJson(Season instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'startDate': instance.startDate,
  'endDate': instance.endDate,
  'year': instance.year,
  'competitionId': instance.competitionId,
};

Stage _$StageFromJson(Map<String, dynamic> json) => Stage(
  order: json['order'] as String,
  type: json['type'] as String,
  phase: json['phase'] as String,
  startDate: json['startDate'] as String,
  endDate: json['endDate'] as String,
  year: json['year'] as String,
);

Map<String, dynamic> _$StageToJson(Stage instance) => <String, dynamic>{
  'order': instance.order,
  'type': instance.type,
  'phase': instance.phase,
  'startDate': instance.startDate,
  'endDate': instance.endDate,
  'year': instance.year,
};

Round _$RoundFromJson(Map<String, dynamic> json) =>
    Round(number: (json['number'] as num).toInt());

Map<String, dynamic> _$RoundToJson(Round instance) => <String, dynamic>{
  'number': instance.number,
};

Groups _$GroupsFromJson(Map<String, dynamic> json) =>
    Groups(id: json['id'] as String, name: json['name'] as String);

Map<String, dynamic> _$GroupsToJson(Groups instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};
