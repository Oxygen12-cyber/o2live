
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PeriStates {
  final int selectedIndex;
  final int listOffset;
  const PeriStates({required this.selectedIndex, required this.listOffset});

  PeriStates copyWith({int? selectedIndex, int? listOffset}) {
    return PeriStates(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      listOffset: listOffset ?? this.listOffset,
    );
  }
}

class GeneralStatesNotifier extends Notifier<PeriStates> {
  @override
  PeriStates build() {
    return const PeriStates(selectedIndex: 0, listOffset: 0);
  }

  void addIndex(int index) {
    state = state.copyWith(selectedIndex: index);
  }
}

final generalStatesProvider =
    NotifierProvider<GeneralStatesNotifier, PeriStates>(
      GeneralStatesNotifier.new,
    );




// class dateScrollNotifier extends Notifier<ScrollController> {
//   @override
//   ScrollController build() {
//     return ScrollController(initialScrollOffset: 0);
//   }

//   void change_offset(int new_offset) {
//     state.initialScrollOffset = new_offset;
//   }
// }
