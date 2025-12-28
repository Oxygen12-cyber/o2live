import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:o2live/service/api/apimodels.dart';

void main() async {
  print('Starting API Model Test...');

  final baseUrl = 'https://api.sportradar.com/soccer-extended/trial/v4/en';
  final date = '2025-12-26';
  final url = Uri.parse('$baseUrl/schedules/$date/schedules.json');

  print('Fetching data from: $url');

  try {
    final response = await http.get(
      url,
      headers: {
        "accept": "application/json",
        'x-api-key': 'WzfL8udyeaGNINE7zPbtmpXWO1PeS6uit6tfxZEd',
      },
    );

    if (response.statusCode != 200) {
      print('Failed to load data. Status Code: ${response.statusCode}');
      print('Body: ${response.body}');
      return;
    }

    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);

    if (jsonResponse.isEmpty) {
      print('No data found for date $date');
      return;
    }

    print('parsing data into models');
    final modelData = SportRadar.fromJson(jsonResponse);

    print('Successfully parsed root model.');
    print('Generated Time: ${modelData.generatedTime}');
    print('Number of schedules: ${modelData.schedules.length}');

    final firstSchedule = modelData.schedules.first;
    final hometeam = firstSchedule.sportEvent.competitors![0].id;

    print('hometeam: $hometeam');
    print('First Match ID: ${firstSchedule.sportEvent.id}');
    print('starttime: ${firstSchedule.sportEvent.startTime}');

    final List<Schedules> allTeams = modelData.schedules;

    final Set<String> listPriority = {
      'sr:competition:44',
      'sr:competition:16',
      'sr:competition:8',
      'sr:competition:34',
      'sr:competition:35',
      'sr:competition:17',
      'sr:competition:7',
      'sr:competition:1',
      'sr:competition:465',
      'sr:competition:18',
      'sr:competition:54',
      'sr:competition:11',
      'sr:competition:270',
      
    };

    final List<Schedules> priorityList = allTeams.where((x) {
      String? competitionId = x.sportEvent.sportEventContext?.competition?.id;
      return listPriority.contains(competitionId);
    }).toList();

    final List<Schedules> otherList = allTeams.where((x) {
      String? competitionId = x.sportEvent.sportEventContext?.competition?.id;
      return !listPriority.contains(competitionId);
    }).toList();

    // final allTeamIds = modelData.schedules
    //     .map((e) => e.sportEvent.sportEventContext?.competition?.id)
    //     .toSet();
    // final allleagues = modelData.schedules
    //     .map((e) => e.sportEvent.sportEventContext?.competition?.name)
    //     .toSet();

    final Set<String?> homeTeams = priorityList
        .map((e) => e.sportEvent.sportEventContext?.competition?.name)
        .toSet();

    final Set<String?> homeTeam = otherList
        .map((e) => e.sportEvent.sportEventContext?.competition?.name)
        .toSet();

    print('priorityList: $homeTeams\n\n\n');
    print('otherList: $homeTeam');
    // print('allteams: $allleagues');

    // print('otherList: $OtherList');

    // print('new list: $newList');
    // print('New list IDs: ${newList.map((s) => s.sportEvent.sportEventContext?.competition?.id).toList()}');
  } catch (e, s) {
    print('Error parsing data: $e');
    print('Stack trace: $s');
  }
}
