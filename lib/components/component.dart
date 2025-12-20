
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:o2live/extensions/extension.dart';

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
  final IconData icondata;
  const GameTile({
    super.key,
    required this.icondata,
    required this.isLive,
    this.onTap,
    this.gametime,
    required this.isFavorite,
    this.homeScores,
    this.awayScores,
    required this.homeTeam,
    required this.awayTeam,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
        boxShadow: [
          const BoxShadow(spreadRadius: .05, blurRadius: 15, color: Colors.black12),
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
                Icon(icondata, size: 24),
                Text(homeTeam, style: const TextStyle(color: Colors.black)),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                Icon(icondata, size: 24),
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
                  homeScores ?? '0',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  awayScores ?? '0',
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
  final int selectedIndex;
  final int index;
  final Function()? onTap;
  const DateTile({
    super.key,
    required this.selectedIndex,
    required this.index,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: index == selectedIndex ? Colors.grey : Colors.white,
          borderRadius: index == selectedIndex
              ? BorderRadius.circular(12)
              : BorderRadius.circular(0),
        ),
        child: const Text(
          "Fri 13 \n May",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black54,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
