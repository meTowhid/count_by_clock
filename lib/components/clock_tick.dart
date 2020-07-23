import 'package:count_by_clock/constants/tick_position.dart';
import 'package:flutter/material.dart';

class ClockTick extends StatefulWidget {
  final Color color;
  final double length, tickThickness;
  final SingleTickPosition tickPosition;
  final Curve curve;
  final bool hideTick;

  ClockTick({
    this.length,
    this.tickThickness,
    this.tickPosition = SingleTickPosition.zero,
    this.color = Colors.black,
    this.curve = Curves.easeInOut,
    this.hideTick = false,
  });

  @override
  _ClockTickState createState() => _ClockTickState();
}

class _ClockTickState extends State<ClockTick> {
  @override
  Widget build(BuildContext context) {
    var thickness = widget.tickThickness ?? widget.length * .12;
    var tickDecoration = BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(thickness / 2)), color: widget.color);
    double tickLength = widget.length / 2 + thickness / 2;
    return TweenAnimationBuilder(
      curve: widget.curve,
      tween: Tween<double>(begin: 0, end: widget.tickPosition.angleValue),
      duration: Duration(milliseconds: 1000),
      builder: (BuildContext context, value, Widget child) => Transform.rotate(
        origin: Offset(0, -thickness / 2),
        alignment: Alignment.bottomCenter,
        angle: value,
        child: child,
      ),
      child: AnimatedOpacity(
          curve: Curves.easeOut,
          duration: Duration(milliseconds: 700),
          opacity: widget.tickPosition == SingleTickPosition.none && widget.hideTick ? 0 : 1,
          child: Container(width: thickness, height: tickLength, decoration: tickDecoration)),
    );
  }
}
