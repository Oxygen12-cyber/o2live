import 'package:flutter/material.dart';

extension ResponsiveSize on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;

  double hp(double percentage) => height * (percentage / 100);
  double wp(double percentage) => width * (percentage / 100);
}
