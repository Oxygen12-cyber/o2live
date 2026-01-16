import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:o2live/service/api/dailysummaries/dailysummary.dart';

void main() async {
  print('Starting Daily Summary API Test...');

  final url = Uri.parse(
    'https://api.sportradar.com/soccer-extended/trial/v4/en/schedules/2025-06-01/summaries.json',
  );
  final apiKey =
      'WzfL8udyeaGNINE7zPbtmpXWO1PeS6uit6tfxZEd'; 

  print('Fetching data from: $url');

  try {
    final response = await http.get(
      url,
      headers: {
        "accept": "application/json",
        'x-api-key': apiKey,
      },
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

    print('Parsing data into DailySummary model...');
    try {
      final modelData = DailySummary.fromJson(jsonResponse);

      print('Successfully parsed root model.');
      print('Generated At: ${modelData.generatedAt}');
      print('Number of summaries: ${modelData.summaries.length}');

      if (modelData.summaries.isNotEmpty) {
        final firstSummary = modelData.summaries.first;
        print('First Event ID: ${firstSummary.sportEvent.id}');
        print('First Event Status: ${firstSummary.sportEventStatus.status}');
      }
    } catch (e, s) {
      print('Error parsing JSON to model: $e');
      print('Stack trace: $s');
      
      print('JSON Snippet: ${response.body.substring(0, 500)}...');
    }
  } catch (e, s) {
    print('Network or other error: $e');
    print('Stack trace: $s');
  }
}
