import 'dart:async';

import 'package:o2live/service/api/apimodels.dart';
import 'package:o2live/service/apicall.dart';
import 'package:riverpod/riverpod.dart';

class SportRadarObj extends AsyncNotifier<SportRadar> {
  @override
  FutureOr<SportRadar> build() async {
    final dailySchedules = await fetchDailySchedules();
    return dailySchedules;
  }
}

final sportRadarProvider = AsyncNotifierProvider<SportRadarObj, SportRadar>(SportRadarObj.new);
