import 'dart:async';

import 'package:o2live/models/models.dart';
import 'package:o2live/service/api/apimodels.dart';
import 'package:o2live/service/apicall.dart';
import 'package:riverpod/riverpod.dart';

class SportRadarObj extends AsyncNotifier<List<Schedules>> {
  final String date;
  SportRadarObj(this.date);

  @override
  FutureOr<List<Schedules>> build() async {
    final dailySchedules = await fetchDailySchedules(date);
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

final sportRadarProvider = AsyncNotifierProvider.autoDispose
    .family<SportRadarObj, List<Schedules>, String>(SportRadarObj.new);
