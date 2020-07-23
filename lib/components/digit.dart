import 'package:count_by_clock/components/clock.dart';
import 'package:count_by_clock/constants/digits.dart';
import 'package:count_by_clock/constants/tick_position.dart';
import 'package:flutter/material.dart';

class Digit extends StatelessWidget {
  final Digits digit;
  final Color baseColor, tickColor;
  final double clockArea, tickThickness;
  final bool flatStyle, hideTick;
  final Curve curve;

  const Digit(
    this.digit, {
    this.baseColor,
    this.clockArea = 100,
    this.tickThickness,
    this.tickColor = Colors.black87,
    this.curve = Curves.easeInOut,
    this.flatStyle = false,
    this.hideTick = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(mainAxisSize: MainAxisSize.min, children: [_buildClock(digit.topLeft), _buildClock(digit.topRight)]),
        Row(mainAxisSize: MainAxisSize.min, children: [_buildClock(digit.centerLeft), _buildClock(digit.centerRight)]),
        Row(mainAxisSize: MainAxisSize.min, children: [_buildClock(digit.bottomLeft), _buildClock(digit.bottomRight)]),
      ],
    );
  }

  _buildClock(DoubleTickPosition position) => Clock(
        position,
        curve: curve,
        radius: clockArea,
        tickColor: tickColor,
        baseColor: baseColor,
        flatStyle: flatStyle,
        tickThickness: tickThickness,
        hideTick: hideTick,
      );
}
