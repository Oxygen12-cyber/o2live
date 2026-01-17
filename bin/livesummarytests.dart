import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:o2live/service/api/livesummaries/livesummary.dart';

void main() async {
  print('Starting Live Summary API Test...');

  final url = Uri.parse(
    'https://api.sportradar.com/soccer-extended/trial/v4/en/schedules/live/summaries.json',
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

    print('Parsing data into LiveSummaries model...');
    try {
      final modelData = LiveSummaries.fromJson(jsonResponse);

      print('Successfully parsed root model.');
      print('Generated At: ${modelData.generatedAt}');
      print('Number of summaries: ${modelData.summaries.length}');

      if (modelData.summaries.isNotEmpty) {
        final firstSummary = modelData.summaries.first;
        print('First Event ID: ${firstSummary.sportEvent.id}');
        print('First Event Status: ${firstSummary.sportEventStatus.status}');

        if (firstSummary.statistics != null) {
          final competitors = firstSummary.statistics!.totals.competitors;
          print('Number of competitors with stats: ${competitors.length}');

          if (competitors.isNotEmpty) {
            final firstComp = competitors.first;
            print('Competitor: ${firstComp.name} (${firstComp.qualifier})');
            print('Possession: ${firstComp.statistics.ballPossession}%');
            if (firstComp.players.isNotEmpty) {
              print(
                'First Player: ${firstComp.players.first.name} (Starter: ${firstComp.players.first.starter})',
              );
            }
          }
        } else {
          print('No statistics available for this event.');
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
