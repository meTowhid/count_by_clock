import 'package:count_by_clock/count_by_clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(home: Demo(), debugShowCheckedModeBanner: false));
}

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
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
          Container(
            color: Colors.black87,
            child: _buildResponsive(
              // Almost all the changeable properties are here
              CountByClock(
                counter,
                digitCount: 3,
                tickColor: Colors.white,
                baseColor: Colors.white10,
                clockArea: 100,
                tickThickness: 8,
                flatStyle: true,
                curve: Curves.elasticOut,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: _incrementCounter, child: Icon(Icons.add)),
    );
  }

  _buildResponsive(Widget widget) => Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .80,
          height: MediaQuery.of(context).size.height * .80,
          child: FittedBox(
            child: Center(child: widget),
          ),
        ),
      );
}
