import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:o2live/components/component.dart';
import 'package:o2live/extensions/extension.dart';

class SportPage extends StatefulWidget {
  const SportPage({super.key});

  @override
  State<SportPage> createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  bool _isExpanded = false;
  int number_of_dates = 8;
  late final ScrollController dateListScroll;

  @override
  void initState() {
    dateListScroll = ScrollController(initialScrollOffset: number_of_dates / 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            expandedHeight: 150,
            automaticallyImplyLeading: false,
            centerTitle: true,
            elevation: 0,
            scrolledUnderElevation: 0,
            surfaceTintColor: Colors.transparent,
            backgroundColor: Color(0xff3a33ff),
            title: Row(
              spacing: 0,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Scores',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 0,
                  child: VerticalDivider(color: Colors.white54),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    spacing: 5,
                    children: [
                      Text(
                        'Super Chart',
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Iconsax.export_1, color: Colors.white),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 0,
                  child: VerticalDivider(color: Colors.white54),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    spacing: 5,
                    children: [
                      Text(
                        'Casino',
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Iconsax.export_1, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
            flexibleSpace: FlexibleSpaceBar(
              // centerTitle: true,
              // title: Text('Nothing'),
              background: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: context.hp(15)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      spacing: 20,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //icon button
                        Container(
                          height: 40,
                          width: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Center(
                            child: IconButton(
                              iconSize: 20,
                              icon: !_isExpanded
                                  ? FaIcon(
                                      FontAwesomeIcons.search,
                                      color: Colors.blue,
                                    )
                                  : FaIcon(
                                      FontAwesomeIcons.x,
                                      color: Colors.blue,
                                    ),
                              onPressed: () {
                                setState(() {
                                  _isExpanded = !_isExpanded;
                                });
                              },
                            ),
                          ),
                        ),

                        //searchbar
                        Container(
                          width: _isExpanded ? 250 : 0,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0.1,
                                blurRadius: 0.5,
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'search anything',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 0,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 0,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _datePicker(
              maxHeight: 90,
              minHeight: 90,
              child: Container(
                height: 90,
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton.filled(
                      onPressed: () {},
                      icon: Icon(Icons.mail),
                      iconSize: 16,
                      color: Colors.white,
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.blue,
                        elevation: 3,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: ListView.builder(
                        controller: dateListScroll,
                        scrollDirection: Axis.horizontal,
                        itemCount: number_of_dates,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(
                            // horizontal: 3,
                            vertical: 15,
                          ),
                          child: DateTile(),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    IconButton.filled(
                      onPressed: () {},
                      icon: Icon(Icons.calendar_month_rounded),
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.blue,
                        elevation: 10,
                      ),
                      iconSize: 16,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList.builder(
            itemCount: 18,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
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
        ],
      ),
    );
  }
}

class _datePicker extends SliverPersistentHeaderDelegate {
  final double maxHeight;
  final double minHeight;
  final Widget child;

  _datePicker({
    required this.maxHeight,
    required this.minHeight,
    required this.child,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return child;
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
