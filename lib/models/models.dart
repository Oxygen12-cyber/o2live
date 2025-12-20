import 'package:flutter/material.dart';

final List<Color> colors = [
  Colors.pink,
  Colors.yellow,
  Colors.deepPurple,
  Colors.blue,
];

Widget dateContainer(String text) => Container(
  color: Colors.green,
  width: 40,
  height: 40,
  alignment: Alignment.center,
  child: Text(
    text,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
  ),
);

final List<String> mydata = [
  'Nothing',
  'waittin',
  'wow not working',
  'same thing?',
];

final List<Map<String, dynamic>> maxData = [];

class Match {
  final String id;
  final String gameTime;
  final bool isLive;
  final bool isFavorite;
  final int homeScore;
  final int awayScore;
  final String homeTeam;
  final String awayTeam;
  final IconData iconData;

  Match({
    required this.id,
    required this.gameTime,
    required this.isLive,
    required this.isFavorite,
    required this.homeScore,
    required this.awayScore,
    required this.homeTeam,
    required this.awayTeam,
    required this.iconData,
  });
}

// Mock data
final List<Match> mockMatches = [
  Match(
    id: '1',
    gameTime: 'HT',
    isLive: true,
    isFavorite: true,
    homeScore: 2,
    awayScore: 1,
    homeTeam: 'Manchester United',
    awayTeam: 'Liverpool',
    iconData: Icons.person,
  ),
  Match(
    id: '2',
    gameTime: 'FT',
    isLive: false,
    isFavorite: false,
    homeScore: 1,
    awayScore: 1,
    homeTeam: 'Chelsea',
    awayTeam: 'Arsenal',
    iconData: Icons.person,
  ),
  Match(
    id: '3',
    gameTime: '45+2',
    isLive: true,
    isFavorite: true,
    homeScore: 3,
    awayScore: 0,
    homeTeam: 'Manchester City',
    awayTeam: 'Everton',
    iconData: Icons.person,
  ),
  Match(
    id: '4',
    gameTime: '20\'',
    isLive: true,
    isFavorite: false,
    homeScore: 0,
    awayScore: 2,
    homeTeam: 'Tottenham',
    awayTeam: 'Brighton',
    iconData: Icons.person,
  ),
  Match(
    id: '5',
    gameTime: 'FT',
    isLive: false,
    isFavorite: false,
    homeScore: 2,
    awayScore: 2,
    homeTeam: 'Newcastle',
    awayTeam: 'Aston Villa',
    iconData: Icons.person,
  ),
  Match(
    id: '6',
    gameTime: '67\'',
    isLive: true,
    isFavorite: true,
    homeScore: 1,
    awayScore: 3,
    homeTeam: 'West Ham',
    awayTeam: 'Fulham',
    iconData: Icons.person,
  ),
  Match(
    id: '7',
    gameTime: 'FT',
    isLive: false,
    isFavorite: false,
    homeScore: 0,
    awayScore: 0,
    homeTeam: 'Bournemouth',
    awayTeam: 'Nottingham Forest',
    iconData: Icons.person,
  ),
  Match(
    id: '8',
    gameTime: '38\'',
    isLive: true,
    isFavorite: false,
    homeScore: 2,
    awayScore: 0,
    homeTeam: 'Brentford',
    awayTeam: 'Luton Town',
    iconData: Icons.person,
  ),
  Match(
    id: '9',
    gameTime: 'HT',
    isLive: true,
    isFavorite: true,
    homeScore: 1,
    awayScore: 1,
    homeTeam: 'Crystal Palace',
    awayTeam: 'Wolves',
    iconData: Icons.person,
  ),
  Match(
    id: '10',
    gameTime: 'FT',
    isLive: false,
    isFavorite: false,
    homeScore: 3,
    awayScore: 2,
    homeTeam: 'Ipswich Town',
    awayTeam: 'Southampton',
    iconData: Icons.person,
  ),
];
