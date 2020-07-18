import 'package:count_by_clock/components/clock_tick.dart';
import 'package:count_by_clock/constants/tick_position.dart';
import 'package:flutter/material.dart';

class Clock extends StatelessWidget {
  final DoubleTickPosition time;
  final Color baseColor, tickColor;
  final double radius, spacing, tickMargin, tickThickness;
  final Curve curve;
  final bool flatStyle;

  const Clock(
    this.time, {
    this.baseColor,
    this.spacing = 4,
    this.radius = 100,
    this.tickMargin = 4,
    this.tickThickness,
    this.tickColor = Colors.black,
    this.curve = Curves.easeInOut,
    this.flatStyle = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: radius,
      height: radius,
      margin: EdgeInsets.all(spacing),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: baseColor ?? Colors.grey[300],
        boxShadow: flatStyle
            ? []
            : [
                BoxShadow(color: Colors.black.withOpacity(.5), offset: Offset(2, 2), blurRadius: 7, spreadRadius: .5),
                BoxShadow(color: Colors.white.withOpacity(.90), offset: Offset(-2, -2), blurRadius: 7, spreadRadius: .5),
              ],
      ),
      child: Container(
        margin: EdgeInsets.all(tickMargin),
        alignment: Alignment.topCenter,
        child: Stack(
          children: <Widget>[
            ClockTick(length: radius - tickMargin - spacing, tickPosition: time.hp1, color: tickColor, tickThickness: tickThickness, curve: curve),
            ClockTick(length: radius - tickMargin - spacing, tickPosition: time.hp2, color: tickColor, tickThickness: tickThickness, curve: curve),
          ],
        ),
      ),
    );
  }
}
