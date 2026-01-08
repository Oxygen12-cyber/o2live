import 'package:intl/intl.dart';
import 'package:riverpod/riverpod.dart';

DateTime getDate(int dayOffset) {
  final DateTime today = DateTime.now();
  final date = today.add(Duration(days: dayOffset));
  return date;
}

Map<String, dynamic> dateStringify(DateTime date) {
  final weekDay = DateFormat('EEE').format(date);
  final dateMonth = DateFormat("d'th' MMM").format(date);
  final passFormat = DateFormat("yyyy-MM-dd").format(date);
  return {'week': weekDay, 'month': dateMonth, 'passFormat':passFormat};
}

class DateBlock {
  final String weekDay;
  final String dateMonth;
  final String passDate;

  DateBlock({required this.weekDay, required this.dateMonth, required this.passDate});
}

class DateNotifier extends Notifier<List<DateBlock>> {
  @override
  List<DateBlock> build() {
    final numbers = [-3, -2, -1, 0, 1, 2, 3];
    final days = [for (var num in numbers) dateStringify(getDate(num))];
    final alldays = days
        .map((e) => DateBlock(weekDay: e['week'], dateMonth: e['month'], passDate: e['passFormat']))
        .toList();

    return alldays;
  }
}

final dateProvider = NotifierProvider<DateNotifier, List<DateBlock>>(
  DateNotifier.new,
);
