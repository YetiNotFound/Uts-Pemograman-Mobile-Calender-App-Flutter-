import 'package:flutter/material.dart';
import 'package:kalender/pages/kalender.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super. key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCalendar(),
      debugShowCheckedModeBanner: false,
    );
  }
}