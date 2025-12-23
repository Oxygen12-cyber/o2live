import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:o2live/service/api/apimodels.dart';

void main() async {
  print('Starting API Model Test...');

  final baseUrl = 'https://api.sportradar.com/soccer-extended/trial/v4/en';
  final date = '2025-06-01';
  final url = Uri.parse('$baseUrl/schedules/$date/schedules.json/?limit=3');

  print('Fetching data from: $url');

  try {
    final response = await http.get(
      url,
      headers: {'x-api-key': 'WzfL8udyeaGNINE7zPbtmpXWO1PeS6uit6tfxZEd'},
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

    if (modelData.schedules.isNotEmpty) {
      final firstSchedule = modelData.schedules.first;
      print('First Match ID: ${firstSchedule.sportEvent.id}');
      print('Competitors:');
      for (var competitor in firstSchedule.sportEvent.competitors) {
        print(' - ${competitor.name} (${competitor.qualifier})');
      }
      print('Status: ${firstSchedule.sportEventStatus.matchStatus}');
    }
  } catch (e, s) {
    print('Error parsing data: $e');
    print('Stack trace: $s');
  }
}
