import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:o2live/pages/favoritepage.dart';
import 'package:o2live/pages/foryoupage.dart';
import 'package:o2live/pages/sportpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> pages = [SportPage(), FavoritePage(), ForYouPage()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        selectedLabelStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        unselectedLabelStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        currentIndex: currentIndex,
        onTap: (value) => setState(() {
          currentIndex = value;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/football.png',
              width: 24,
              height: 24,
            ),
            label: 'football',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/favorites.png',
              width: 24,
              height: 24,
            ),
            label: 'favorite',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/post.png', width: 24, height: 24),
            label: 'foryou',
          ),
        ],
      ),
    );
  }
}
