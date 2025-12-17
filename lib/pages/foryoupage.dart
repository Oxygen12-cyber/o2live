
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:o2live/components/component.dart';
import 'package:o2live/models/models.dart';

class ForYouPage extends StatefulWidget {
  const ForYouPage({super.key});

  @override
  State<ForYouPage> createState() => _ForYouPageState();
}

class _ForYouPageState extends State<ForYouPage> {
  

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: double.infinity,
          color: Colors.blue,
          child: const Text('nohting'),
        ),
      ),
    );
  }
}
