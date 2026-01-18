import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:o2live/extensions/extension.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hinttext;
  final Icon? prefixIcon;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hinttext,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      enableSuggestions: true,
      maxLines: 1,
      selectAllOnFocus: true,

      style: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
        hintText: hinttext,
        hintStyle: const TextStyle(
          color: Colors.black38,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 2, color: Colors.black38),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 3, color: Color(0xff7d34eb)),
        ),
      ),
    );
  }
}

class GameTile extends StatelessWidget {
  final String? gametime;
  final Function()? onTap;
  final bool isLive;
  final bool isFavorite;
  final String? homeScores;
  final String? awayScores;
  final String homeTeam;
  final String awayTeam;
  final String homeImage;
  final String awayImage;
  const GameTile({
    super.key,
    required this.isLive,
    this.onTap,
    this.gametime,
    required this.isFavorite,
    this.homeScores,
    this.awayScores,
    required this.homeTeam,
    required this.awayTeam,
    required this.homeImage,
    required this.awayImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
        boxShadow: [
          const BoxShadow(
            spreadRadius: .05,
            blurRadius: 15,
            color: Colors.black12,
          ),
        ],
      ),
      child: ListTile(
        onTap: onTap,
        contentPadding: const EdgeInsets.only(
          left: 0,
          right: 12,
          top: 12,
          bottom: 12,
        ),
        titleAlignment: ListTileTitleAlignment.center,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide.none,
        ),
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            isLive
                ? Container(
                    width: 6,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: isLive
                          ? Colors.red.withAlpha(200)
                          : Colors.transparent,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red.withAlpha(80),
                          spreadRadius: 10,
                          blurRadius: 30,
                          offset: const Offset(10, 0),
                        ),
                      ],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                  )
                : const SizedBox(width: 6),
            SizedBox(width: context.wp(3)),
            Text(
              gametime ?? 'null',
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        title: Column(
          spacing: 10,
          children: [
            Row(
              spacing: 10,
              children: [
                CachedNetworkImage(
                  imageUrl: homeImage,
                  fit: BoxFit.cover,
                  height: 24,
                  width: 24,
                  alignment: Alignment.center,
                ),
                Text(homeTeam, style: const TextStyle(color: Colors.black)),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                CachedNetworkImage(
                  imageUrl: awayImage,
                  fit: BoxFit.cover,
                  height: 24,
                  width: 24,
                  alignment: Alignment.center,
                ),
                Text(awayTeam, style: const TextStyle(color: Colors.black)),
              ],
            ),
          ],
        ),
        trailing: Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  homeScores ?? '',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  awayScores ?? '',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Icon(
              isFavorite ? Icons.star : Icons.star_border_outlined,
              color: isFavorite ? Colors.amber : Colors.black45,
            ),
          ],
        ),
      ),
    );
  }
}

class PageTest extends StatelessWidget {
  final Color color;
  final String data;
  const PageTest({super.key, required this.color, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 400,
      height: 400,
      child: Center(child: Text(data)),
    );
  }
}

class DateTile extends StatelessWidget {
  final String date;
  final String? date2;
  final int selectedIndex;
  final int index;
  final Function()? onTap;
  const DateTile({
    super.key,
    required this.selectedIndex,
    required this.index,
    this.onTap,
    required this.date,
    this.date2,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: index == selectedIndex ? Colors.grey.shade200 : Colors.white,
          borderRadius: index == selectedIndex
              ? BorderRadius.circular(12)
              : BorderRadius.circular(0),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              date.toUpperCase(),
              textAlign: TextAlign.center,

              style: GoogleFonts.poppins(
                color: Colors.black54,
                fontSize: 12,

                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              date2 ?? "13th May",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TeamDash extends StatelessWidget {
  final String? leagueName;
  final String? leagueShort;
  final String homeTeam;
  final String awayTeam;
  final String homeScore;
  final String awayScore;
  final String? homeImage;
  final String? awayImage;
  final String? leagueImage;
  const TeamDash({
    super.key,
    this.leagueName,
    required this.homeTeam,
    required this.awayTeam,
    required this.homeScore,
    required this.awayScore,
    this.homeImage,
    this.awayImage,
    this.leagueImage,
    this.leagueShort,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.hardEdge,
      fit: StackFit.loose,
      children: [
        Container(
          width: context.wp(90),
          height: context.hp(30),
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Image.asset(
            leagueImage ?? 'assets/images/premierleague.png',
            color: Colors.black12,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: context.wp(90),
          height: context.hp(30),
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$leagueName \n $leagueShort',
                textAlign: TextAlign.center,
                style: GoogleFonts.ubuntuSans(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: context.hp(8)),
              Row(
                // spacing: ,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 32,
                          foregroundImage: AssetImage(
                            homeImage ?? 'assets/images/manulogo.png',
                          ),
                        ),
                        SizedBox(width: context.hp(2)),
                        Text(
                          homeScore,
                          style: GoogleFonts.ubuntuSans(
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: context.hp(2)),
                      ],
                    ),
                  ),
                  Text(
                    ':',
                    style: GoogleFonts.ubuntuSans(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: context.hp(2)),
                        Text(
                          awayScore,
                          style: GoogleFonts.ubuntuSans(
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: context.hp(2)),
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage(
                            awayImage ?? 'assets/images/chelsealogo.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        homeTeam,
                        style: GoogleFonts.ubuntuSans(
                          fontSize: homeTeam.length > 7 ? 14 : 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        awayTeam,
                        style: GoogleFonts.ubuntuSans(
                          fontSize: awayTeam.length > 7 ? 14 : 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.hp(2)),
            ],
          ),
        ),
      ],
    );
  }
}
