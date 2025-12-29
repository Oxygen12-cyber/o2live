import 'dart:async';

import 'package:o2live/models/models.dart';
import 'package:o2live/service/api/apimodels.dart';
import 'package:o2live/service/apicall.dart';
import 'package:riverpod/riverpod.dart';

class SportRadarObj extends AsyncNotifier<List<Schedules>> {
  @override
  FutureOr<List<Schedules>> build() async {
    final dailySchedules = await fetchDailySchedules('2025-12-29');
    final value = dailySchedules.schedules;

    final List<Schedules> priorityList = value.where((x) {
      String? competitionId = x.sportEvent.sportEventContext?.competition?.id;
      return leaguePriority.contains(competitionId);
    }).toList();
    final List<Schedules> otherList = value.where((x) {
      String? competitionId = x.sportEvent.sportEventContext?.competition?.id;
      return !leaguePriority.contains(competitionId);
    }).toList();
    final List<Schedules> filtered = [...priorityList, ...otherList];

    return filtered;
  }
}

final sportRadarProvider =
    AsyncNotifierProvider<SportRadarObj, List<Schedules>>(SportRadarObj.new);
