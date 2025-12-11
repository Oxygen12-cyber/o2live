import 'package:flutter/gestures.dart';
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
        contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
        hintText: hinttext,
        hintStyle: TextStyle(
          color: Colors.black38,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(width: 2, color: Colors.black38),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(width: 3, color: const Color(0xff7d34eb)),
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
    return ListTile(
      tileColor: Color(0xff1a1a1a),
      onTap: onTap,
      contentPadding: EdgeInsets.only(left: 0, right: 12, top: 12, bottom: 12),
      titleAlignment: ListTileTitleAlignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
        side: BorderSide.none,
      ),
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 10,
            height: double.infinity,
            decoration: BoxDecoration(
              color: isLive ? Colors.red.withAlpha(200) : Colors.transparent,
              boxShadow: [
                BoxShadow(
                  color: Colors.red,
                  spreadRadius: 10,
                  blurRadius: 30,
                  offset: Offset(10, 0),
                ),
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
          ),
          SizedBox(width: context.wp(3)),
          Text(
            gametime ?? 'FT',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
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
              Text(homeTeam, style: TextStyle(color: Colors.white)),
            ],
          ),
          Row(
            spacing: 10,
            children: [
              Icon(icondata, size: 24),
              Text(awayTeam, style: TextStyle(color: Colors.white)),
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
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                awayScores ?? '0',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Icon(Icons.star, color: isFavorite ? Colors.amber : Colors.black),
        ],
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
