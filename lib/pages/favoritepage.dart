import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:o2live/components/component.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GameTile(
            icondata: Icons.person,
            isLive: true,
            isFavorite: true,
            awayScores: '2',
            homeTeam: 'Villareal',
            awayTeam: 'Fc Barcelona',
          ),
        ),
      ),
    );
  }
}

Widget field() => TextField(decoration: InputDecoration(hintText: 'search'));
