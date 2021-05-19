import 'package:flutter/material.dart';
import 'package:flutter_day1/thirdscreen.dart';
import 'package:flutter_day1/secondscreen.dart';
import 'package:flutter_day1/firstscreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'First Project',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => FirstScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => SecondScreen(),
        // When navigating to the "/third" route, build the ThirdScreen widget.
        '/third': (context) => ThirdScreen(),
      },
    ),
  );
}
