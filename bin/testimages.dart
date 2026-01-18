import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:o2live/service/api/imagelogo/teamsbadges.dart';

final String BaseUrl =
    'https://www.thesportsdb.com/api/v1/json/123/searchteams.php?t=chelsea';

final Uri url = Uri.parse(BaseUrl);

Future getImage() async {
  print('stating api call....');
  final response = await http.get(url);

  print('parsed apidata');
  final Map<String, dynamic> data = jsonDecode(response.body);

  final parsedData = TeamBadge.fromJson(data);

  return parsedData.teams[0].strBadge;
}

void main() async {
  final String image = await getImage();
  print(image);
}
