import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:o2live/components/component.dart';
import 'package:o2live/pages/aitabpage.dart';
import 'package:o2live/pages/detailstabpage.dart';
import 'package:o2live/pages/semmarytabpage.dart';

class Sportinfopage extends StatefulWidget {
  final String sportsdata;
  const Sportinfopage({super.key, required this.sportsdata});

  @override
  State<Sportinfopage> createState() => _SportinfopageState();
}

class _SportinfopageState extends State<Sportinfopage>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TeamDash(
              leagueName: 'Premier League',
              leagueShort: 'EPL',
              homeTeam: 'Manchester United',
              awayTeam: 'Chelsea FC',
              homeScore: '4',
              awayScore: '1',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 15,
              ),
              child: TabBar(
                controller: tabController,
                isScrollable: true,
                tabAlignment: TabAlignment.center,
                indicatorWeight: 5,
                indicatorPadding: const EdgeInsetsGeometry.symmetric(
                  horizontal: 12,
                ),
                indicatorAnimation: TabIndicatorAnimation.elastic,
                indicatorColor: Colors.deepPurple,
                dividerColor: Colors.transparent,
                labelStyle: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                labelColor: Colors.deepPurple,
                overlayColor: WidgetStatePropertyAll(Colors.transparent),
                tabs: [Text('Details'), Text('Ai Insights'), Text('Summary')],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [DetailsTab(), AiTab(), SummaryTab()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
