import 'dart:convert';
import 'package:o2live/service/api/dailyschedules/dailyschedule.dart';

void main() {
  print('Starting Local API Model Test...');

  // JSON captured from successful curl request
  final String jsonString = r'''
{
  "generated_at": "2025-12-23T21:12:38+00:00",
  "schedules": [
    {
      "sport_event": {
        "id": "sr:sport_event:57380311",
        "start_time": "2025-06-01T00:00:00+00:00",
        "start_time_confirmed": true,
        "sport_event_context": {
          "sport": { "id": "sr:sport:1", "name": "Soccer" },
          "category": { "id": "sr:category:49", "name": "Chile", "country_code": "CHL" },
          "competition": { "id": "sr:competition:27665", "name": "Primera Division", "parent_id": "sr:competition:244", "gender": "men" },
          "season": { "id": "sr:season:127935", "name": "Primera Division 2025", "start_date": "2025-02-15", "end_date": "2025-12-07", "year": "2025", "competition_id": "sr:competition:27665" },
          "stage": { "order": 1, "type": "league", "phase": "regular season", "start_date": "2025-02-15", "end_date": "2025-12-07", "year": "2025" },
          "round": { "number": 13 },
          "groups": [{ "id": "sr:league:90581", "name": "Primera Division 2025" }]
        },
        "coverage": {
          "type": "sport_event",
          "sport_event_properties": {
            "lineups": true,
            "formations": true,
            "venue": true,
            "extended_play_by_play": false,
            "extended_player_stats": false,
            "extended_team_stats": false,
            "lineups_availability": "pre",
            "ballspotting": true,
            "commentary": true,
            "fun_facts": true,
            "goal_scorers": true,
            "goal_scorers_live": true,
            "scores": "live",
            "game_clock": true,
            "deeper_play_by_play": true,
            "deeper_player_stats": true,
            "deeper_team_stats": true,
            "basic_play_by_play": true,
            "basic_player_stats": true,
            "basic_team_stats": true
          }
        },
        "competitors": [
          { "id": "sr:competitor:5032", "name": "CD Everton Vina del Mar", "country": "Chile", "country_code": "CHL", "abbreviation": "EVT", "qualifier": "home", "gender": "male" },
          { "id": "sr:competitor:3162", "name": "Audax Italiano", "country": "Chile", "country_code": "CHL", "abbreviation": "AUD", "qualifier": "away", "gender": "male" }
        ],
        "venue": { "id": "sr:venue:756", "name": "Sausalito", "capacity": 23423, "city_name": "Vina del Mar", "country_name": "Chile", "map_coordinates": "-33.014397, -71.535233", "country_code": "CHL", "time_zone": "America/Santiago" },
        "sport_event_conditions": {
          "referee": [
            { "id": "sr:referee:2968290", "name": "Cabero Rebolledo, Jose", "nationality": "Chile", "country_code": "CHL", "type": "main_referee" }
          ],
          "weather": { "pitch_conditions": "medium", "overall_conditions": "medium" },
          "ground": { "neutral": false },
          "lineups": { "confirmed": true }
        }
      },
      "sport_event_status": {
        "status": "closed",
        "match_status": "ended",
        "home_score": 1,
        "away_score": 1,
        "period_scores": [
          { "home_score": 0, "away_score": 0, "type": "regular_period", "number": 1 },
          { "home_score": 1, "away_score": 1, "type": "regular_period", "number": 2 }
        ],
        "match_tie": true,
        "ball_locations": [
          { "order": 4, "x": 23, "y": 73, "qualifier": "home" }
        ],
        "match_situation": { "status": "safe", "qualifier": "home", "updated_at": "2025-06-01T01:59:27+00:00" }
      }
    }
  ]
}
''';

  try {
    final Map<String, dynamic> jsonResponse = jsonDecode(jsonString);
    print('JSON decoded successfully.');

    print('Parsing into SportRadar model...');
    final modelData = SportRadar.fromJson(jsonResponse);

    print('Successfully parsed root model.');
    print('Generated Time: ${modelData.generatedTime}');
    print('Number of schedules: ${modelData.schedules.length}');

    if (modelData.schedules.isNotEmpty) {
      final firstSchedule = modelData.schedules.first;
      print('First Match ID: ${firstSchedule.sportEvent.id}');
      print(
        'StartTime Confirmed: ${firstSchedule.sportEvent.startTimeConfirmed}',
      );
    }
  } catch (e, s) {
    print('Error parsing data: $e');
    print('Stack trace: $s');
  }
}
