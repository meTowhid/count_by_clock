import 'package:count_by_clock/components/digit.dart';
import 'package:count_by_clock/constants/digits.dart';
import 'package:flutter/material.dart';

class CountByClock extends StatelessWidget {
  final int number;
  final Color baseColor, tickColor;
  final double clockArea, tickThickness;
  final int digitCount;
  final bool flatStyle;
  final Curve curve;

  const CountByClock(
    this.number, {
    this.baseColor,
    this.clockArea = 100,
    this.tickThickness,
    this.tickColor = Colors.black87,
    this.digitCount = 1,
    this.curve = Curves.easeInOut,
    this.flatStyle = false,
  });

  @override
  Widget build(BuildContext context) {
    var digits = (number ?? 0).toString().split('').map((i) => Digits.values[int.parse(i)]).toList();
    int additionalZeros = digits.length < digitCount ? digitCount - digits.length : 0;
    if (additionalZeros != 0) List.generate(additionalZeros, (_) => digits.insert(0, Digits.zero));
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: digits.map((digit) {
          return Digit(
            digit,
            curve: curve,
            baseColor: baseColor,
            clockArea: clockArea,
            tickColor: tickColor,
            flatStyle: flatStyle,
            tickThickness: tickThickness,
          );
        }).toList());
  }
}
