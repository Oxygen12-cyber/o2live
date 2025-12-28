import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:o2live/components/component.dart';
import 'package:o2live/extensions/extension.dart';
import 'package:o2live/models/models.dart';
import 'package:o2live/pages/sportinfopage.dart';
import 'package:o2live/pods/providers.dart';
import 'package:o2live/pods/sportapipod.dart';
import 'package:o2live/service/api/apimodels.dart';

class SportPage extends ConsumerStatefulWidget {
  const SportPage({super.key});

  @override
  ConsumerState<SportPage> createState() => _SportPageState();
}

class _SportPageState extends ConsumerState<SportPage> {
  double offsetNumber = 0;
  int number_of_dates = 8;
  // List<Data> myList = [];
  late final ScrollController dateListScroll;

  @override
  void initState() {
    // distributeData();
    dateListScroll = ScrollController(
      initialScrollOffset: number_of_dates / 2,
      keepScrollOffset: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final data = ref.watch(sportRadarProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        backgroundColor: Colors.white,
        color: Colors.blue,
        displacement: 80,
        strokeWidth: 2,
        elevation: 4,
        onRefresh: () {
          debugPrint('refreshed');
          Future.delayed(const Duration(seconds: 1));
          return ref.refresh(sportRadarProvider.future);
        },
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(
            context,
          ).copyWith(scrollbars: false, physics: const BouncingScrollPhysics()),
          child: Consumer(
            builder: (context, ref, child) {
              return data.when(
                data: (sportradar) {
                  final List<Schedules> games = sportradar.schedules;
                  int leng = games.length;
                  debugPrint('$leng');

                  return CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        floating: true,
                        pinned: false,
                        expandedHeight: 115,
                        automaticallyImplyLeading: false,
                        centerTitle: true,
                        elevation: 0,
                        scrolledUnderElevation: 0,
                        surfaceTintColor: Colors.transparent,
                        backgroundColor: const Color(0xff3a33ff),
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
                            const SizedBox(
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
                                  const Icon(
                                    Iconsax.export_1,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
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
                                  const Icon(
                                    Iconsax.export_1,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        flexibleSpace: FlexibleSpaceBar(
                          background: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: context.hp(10)),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Row(
                                  spacing: 10,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton.filled(
                                      onPressed: () => Navigator.pushNamed(
                                        context,
                                        '/searchPage',
                                      ),
                                      icon: const Icon(
                                        Icons.search,
                                        color: Colors.black45,
                                      ),
                                      iconSize: 28,

                                      style: IconButton.styleFrom(
                                        backgroundColor: Colors.white,
                                      ),
                                    ),
                                    IconButton.filled(
                                      onPressed: () => Navigator.pushNamed(
                                        context,
                                        '/searchPage',
                                      ),
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.black45,
                                      ),
                                      iconSize: 28,

                                      style: IconButton.styleFrom(
                                        backgroundColor: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                      width: 0,
                                      child: VerticalDivider(
                                        color: Colors.white54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: context.hp(1)),
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
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: .05,
                                  blurRadius: 2,
                                  color: Colors.black12,
                                ),
                              ],
                            ),
                            child: Stack(
                              children: [
                                Consumer(
                                  builder: (context, ref, child) {
                                    final selectedIndex = ref.watch(
                                      generalStatesProvider,
                                    );
                                    return Expanded(
                                      child: ListView.builder(
                                        controller: dateListScroll,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 7,
                                        itemBuilder: (context, index) =>
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    // horizontal: 3,
                                                    vertical: 15,
                                                  ),
                                              child: DateTile(
                                                selectedIndex:
                                                    selectedIndex.selectedIndex,
                                                index: index,
                                                onTap: () {
                                                  setState(() {
                                                    offsetNumber = selectedIndex
                                                        .selectedIndex
                                                        .toDouble();
                                                  });
                                                  ref
                                                      .read(
                                                        generalStatesProvider
                                                            .notifier,
                                                      )
                                                      .addIndex(index);
                                                },
                                              ),
                                            ),
                                      ),
                                    );
                                  },
                                ),
                                Positioned.fill(
                                  child: Container(decoration: BoxDecoration()),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SliverList.builder(
                        itemCount: leng + 1,
                        itemBuilder: (context, index) {
                          if (index >= games.length) {
                            return const CircularProgressIndicator();
                          }
                          final schedu = games[index];
                          debugPrint('schedules even morecloser: $schedu');
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 5,
                            ),
                            child: GameTile(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Sportinfopage(
                                      sportsdata:
                                          mockMatches[index %
                                                  mockMatches.length]
                                              .homeTeam,
                                    ),
                                  ),
                                );
                              },
                              icondata: Icons.person,
                              gametime: mockMatches[index % mockMatches.length]
                                  .gameTime,
                              isLive: mockMatches[index % mockMatches.length]
                                  .isLive,
                              isFavorite:
                                  mockMatches[index % mockMatches.length]
                                      .isFavorite,
                              homeTeam:
                                  schedu.sportEvent.competitors?[0].name ??
                                  mockMatches[index % mockMatches.length]
                                      .homeTeam,
                              awayTeam:
                                  schedu.sportEvent.competitors?[1].name ??
                                  mockMatches[index % mockMatches.length]
                                      .awayTeam,
                              homeScores:
                                  mockMatches[index % mockMatches.length]
                                      .homeScore
                                      .toString(),
                              awayScores:
                                  mockMatches[index % mockMatches.length]
                                      .awayScore
                                      .toString(),
                            ),
                          );
                        },
                      ),
                    ],
                  );
                },
                error: (e, s) => Center(child: Text('error: $s\n$e')),
                loading: () => const Center(child: CircularProgressIndicator()),
              );
            },
          ),
        ),
      ),
    );
  }

  Future showPicker() async {
    return showDatePicker(
      context: context,
      currentDate: DateTime.now(),
      firstDate: DateTime(2025, 12, 1),
      lastDate: DateTime(2025, 12, 31),
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
