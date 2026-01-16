import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:o2live/components/component.dart';
import 'package:o2live/extensions/extension.dart';
import 'package:o2live/models/models.dart';
import 'package:o2live/pages/sportinfopage.dart';
import 'package:o2live/pods/datetimepod.dart';
import 'package:o2live/pods/providers.dart';
import 'package:o2live/pods/sportapipod.dart';
import 'package:o2live/service/api/dailyschedules/dailyschedule.dart';

String currentSelectedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

class SportPage extends ConsumerStatefulWidget {
  const SportPage({super.key});

  @override
  ConsumerState<SportPage> createState() => _SportPageState();
}

class _SportPageState extends ConsumerState<SportPage> {
  double offsetNumber = 0;
  int number_of_dates = 8;
  final ScrollController dateListScroll = ScrollController();

  @override
  void initState() {
    super.initState();
    dateListScroll.addListener(() {
      final double currentOffset = dateListScroll.offset;
      debugPrint('currentoffset: $currentOffset');
      if (currentOffset > 0.0) dateListScroll.jumpTo(currentOffset);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        backgroundColor: Colors.white,
        color: Colors.blue,
        displacement: 80,
        strokeWidth: 2,
        elevation: 4,
        onRefresh: () async {
          debugPrint('refreshed');
          await Future.delayed(const Duration(seconds: 1));
          return ref.refresh(sportRadarProvider(currentSelectedDate).future);
        },
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(
            context,
          ).copyWith(scrollbars: false, physics: const BouncingScrollPhysics()),
          child: CustomScrollView(
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
                          const Icon(Iconsax.export_1, color: Colors.white),
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
                          const Icon(Iconsax.export_1, color: Colors.white),
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
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          spacing: 10,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton.filled(
                              onPressed: () =>
                                  Navigator.pushNamed(context, '/searchPage'),
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
                              onPressed: () =>
                                  Navigator.pushNamed(context, '/searchPage'),
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
                              child: VerticalDivider(color: Colors.white54),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: context.hp(1)),
                        Consumer(
                          builder: (context, ref, child) {
                            final selectedIndex = ref.watch(
                              generalStatesProvider,
                            );
                            final dates = ref.watch(dateProvider);
                            return Expanded(
                              child: ListView.builder(
                                controller: dateListScroll,
                                scrollDirection: Axis.horizontal,
                                itemCount: dates.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                      // horizontal: 3,
                                      vertical: 15,
                                    ),
                                    child: DateTile(
                                      date: dates[index].weekDay,
                                      date2: dates[index].dateMonth,
                                      selectedIndex:
                                          selectedIndex.selectedIndex,
                                      index: index,
                                      onTap: () {
                                        setState(() {
                                          offsetNumber = selectedIndex
                                              .selectedIndex
                                              .toDouble();
                                          currentSelectedDate =
                                              dates[index].passDate;
                                        });
                                        debugPrint(currentSelectedDate);

                                        dateListScroll.jumpTo(
                                          (selectedIndex.selectedIndex / 7) *
                                              120,
                                        );
                                        ref
                                            .read(
                                              generalStatesProvider.notifier,
                                            )
                                            .addIndex(index);
                                        return ref.refresh(
                                          sportRadarProvider(
                                            currentSelectedDate,
                                          ).future,
                                        );
                                      },
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        SizedBox(width: context.hp(1)),
                      ],
                    ),
                  ),
                ),
              ),
              const SliverListBox(),
            ],
          ),
        ),
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

class SliverListBox extends ConsumerWidget {
  const SliverListBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(sportRadarProvider(currentSelectedDate));
    return data.when(
      data: (sportradar) {
        final List<Schedules> games = sportradar;
        int leng = games.length;
        debugPrint('$leng');
        return SliverList.builder(
          itemCount: leng + 1,
          itemBuilder: (context, index) {
            if (index >= games.length) {
              return const CircularProgressIndicator();
            }
            final schedu = games[index];

            final gameStartTime = schedu.sportEvent.startTime.toString();
            final parseGameTime = fixtureHelper(gameStartTime);

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              child: GameTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sportinfopage(
                        sportsdata:
                            schedu,
                        leagueName:
                            schedu
                                .sportEvent
                                .sportEventContext!
                                .competition!
                                .name ??
                            'Oxygen League',
                        homeTeam:
                            schedu.sportEvent.competitors?[0].name ??
                            'Team One',
                        awayTeam:
                            schedu.sportEvent.competitors?[1].name ??
                            'Team Two',
                      ),
                    ),
                  );
                },
                icondata: Icons.person,
                gametime: parseGameTime['gameTime'],
                isLive: parseGameTime['isLive'],
                isFavorite: mockMatches[index % mockMatches.length].isFavorite,
                homeTeam: schedu.sportEvent.competitors?[0].name ?? 'home',
                awayTeam: schedu.sportEvent.competitors?[1].name ?? 'away',
                homeScores: schedu.sportEventStatus.homeScore.toString(),
                awayScores: schedu.sportEventStatus.awayScore.toString(),
              ),
            );
          },
        );
      },
      error: (e, s) => SliverFillRemaining(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset('assets/animes/lonley404.json'),
                Text(
                  'Network Error',
                  style: GoogleFonts.poppins(
                    fontSize: 45,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Pull Down to Refresh',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      loading: () {
        return SliverFillRemaining(
          child: Center(
            child: SizedBox(
              width: 170,
              height: 170,
              child: Lottie.asset('assets/animes/football.json'),
            ),
          ),
        );
      },
    );
  }
}
