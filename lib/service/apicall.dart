import 'package:dio/dio.dart';
import 'package:o2live/service/api/dailyschedules/dailyschedule.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: 'https://api.sportradar.com/soccer-extended/trial/v4/en',
    headers: {
      'accept': 'application/json',
      'x-api-key': 'WzfL8udyeaGNINE7zPbtmpXWO1PeS6uit6tfxZEd',
    },
  ),
);

final date = '2025-12-26';

Future<DailySchedules> fetchDailySchedules(date) async {
  print('trying to call api.....');
  final response = await dio.get('/schedules/$date/schedules.json');
  print('called api');
  final DailySchedules sportsData = DailySchedules.fromJson(response.data);
  print('getting schedules');
  final List<Schedules> myschedu = sportsData.schedules;
  final length = myschedu.length;
  print('schedules: $length');

  return sportsData;
}
