import 'package:count_by_clock/count_by_clock.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
//    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: PageView(
        children: <Widget>[
          Container(
            color: Colors.grey[300],
            child: _buildResponsive(
              // Its the most simplest form of using the widget
              CountByClock(counter, tickColor: Colors.black54),
            ),
          ),
          Container(
            color: Colors.deepPurple,
            child: _buildResponsive(
              // Almost all the changeable properties are here
              CountByClock(
                counter,
                digitCount: 1,
                tickColor: Colors.white,
                baseColor: Colors.transparent,
                clockArea: 100,
                tickThickness: 20,
                flatStyle: true,
                curve: Curves.elasticOut,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: _incrementCounter, child: Icon(Icons.add)),
    );
  }

  _buildResponsive(Widget widget) => Center(
    child: SizedBox(
      width: MediaQuery.of(context).size.width * .85,
      height: MediaQuery.of(context).size.height * .85,
      child: FittedBox(
        child: Center(child: widget),
      ),
    ),
  );
}
