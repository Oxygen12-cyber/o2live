import 'dart:convert';
import 'package:http/http.dart' as http;


final baseUrl = 'https://v3.football.api-sports.io/';

final url = Uri.parse('$baseUrl/fixtures/?date=2025-12-20');



class ApiService {
  Future getApiData() async {
    final command = null;

    final cachedData = await command.get('sportsData');
    if (cachedData.toString() != 'null') {
      print('redis-data: $cachedData');
      print('using rediscache data');
      return jsonDecode(cachedData);
    }
    try {
      final apiSportsData = await http.get(
        url,
        headers: {'x-apisports-key': 'a1af757026e55aac989790c4291a7db7'},
      );

      //storing response
      final Map<String, dynamic> rep = jsonDecode(apiSportsData.body);
      final List<dynamic> response = rep['response'];

      // adding data to redis
      await command.set('sportsData', jsonEncode(response));
      print('added newdata, no current data in redis');

      //parsing my own response copy
      print('saving parsed response');
      return response;
    } catch (e) {
      print('error: e');
    }
  }
}
