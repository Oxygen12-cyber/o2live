import 'package:flutter/material.dart';

class Sportinfopage extends StatefulWidget {
  final String sportsdata;
  const Sportinfopage({super.key, required this.sportsdata});

  @override
  State<Sportinfopage> createState() => _SportinfopageState();
}

class _SportinfopageState extends State<Sportinfopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text(widget.sportsdata),),
    );
  }
}