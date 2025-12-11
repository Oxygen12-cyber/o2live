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
  late final PageController pageController;
  final int _initialIndex = 0;

  final List listofdates = [];
  format(dateindex) => DateFormat.Md().format(dateindex);

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  List<DateTime> generateList() {
    final currentDate = DateTime.now();
    final datesList = List.generate(
      5,
      (index) => currentDate.add(Duration(days: index)),
    );
    return datesList;
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mydates = generateList();

    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.blue,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: mydates.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: dateContainer(format(mydates[index])),
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              scrollDirection: Axis.vertical,
              itemCount: colors.length,
              itemBuilder: (context, index) =>
                  PageTest(color: colors[index], data: mydata[index]),
            ),
          ),
        ],
      ),
    );
  }
}
