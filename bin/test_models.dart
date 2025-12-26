import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:o2live/service/api/apimodels.dart';
import 'package:collection/collection.dart';

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
    final hometeam = firstSchedule.sportEvent.competitors![0].name;

    print('hometeam: $hometeam');
    print('First Match ID: ${firstSchedule.sportEvent.id}');
    print('starttime: ${firstSchedule.sportEvent.startTime}');

    final allTeams = modelData.schedules;

    final listPriority = {'1', '7', '8', '16', '17', '34', '35', '44', '465'};

    List<Schedules> fastSort(List<Schedules> original, Set<String> priority) {
      var priorityItems = original.where((n) {
        String id = n.sportEvent.sportEventContext!.competition!.id!;
        return priority.contains(id);
      }).toList();

      var otherItems = original.where((n) {
        String id = n.sportEvent.sportEventContext!.competition!.id!;
        return !priority.contains(id);
      }).toList();
      return [...priorityItems, ...otherItems];
    }

    final newList = fastSort(allTeams, listPriority).map((e)=>e.sportEvent.sportEventContext?.competition?.id);
    print('new list: $newList');
    // print('New list IDs: ${newList.map((s) => s.sportEvent.sportEventContext?.competition?.id).toList()}');
  } catch (e, s) {
    print('Error parsing data: $e');
    print('Stack trace: $s');
  }
}
