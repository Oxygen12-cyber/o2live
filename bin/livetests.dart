import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:o2live/service/api/liveschedules/liveschedule.dart';

void main() async {
  print('Starting Live Schedule API Test...');

  final url = Uri.parse(
    'https://api.sportradar.com/soccer-extended/trial/v4/en/schedules/live/schedules.json',
  );
  final apiKey = 'WzfL8udyeaGNINE7zPbtmpXWO1PeS6uit6tfxZEd';

  print('Fetching data from: $url');

  try {
    final response = await http.get(
      url,
      headers: {"accept": "application/json", 'x-api-key': apiKey},
    );

    if (response.statusCode != 200) {
      print('Failed to load data. Status Code: ${response.statusCode}');
      print('Body: ${response.body}');
      return;
    }

    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);

    if (jsonResponse.isEmpty) {
      print('No data found.');
      return;
    }

    print('Parsing data into LiveSchedules model...');
    try {
      final modelData = LiveSchedules.fromJson(jsonResponse);

      print('Successfully parsed root model.');
      print('Generated At: ${modelData.generatedTime}');
      print('Number of schedules: ${modelData.schedules.length}');

      if (modelData.schedules.isNotEmpty) {
        final firstItem = modelData.schedules.first;
        print('First Event ID: ${firstItem.sportEvent.id}');
        print('First Event Status: ${firstItem.sportEventStatus.status}');
        if (firstItem.sportEventStatus.clock != null) {
          print('Clock Played: ${firstItem.sportEventStatus.clock!.played}');
        }
      }
    } catch (e, s) {
      print('Error parsing JSON to model: $e');
      print('Stack trace: $s');
      if (response.body.length > 500) {
        print('JSON Snippet: ${response.body.substring(0, 500)}...');
      } else {
        print('JSON Body: ${response.body}');
      }
    }
  } catch (e, s) {
    print('Network or other error: $e');
    print('Stack trace: $s');
  }
}
