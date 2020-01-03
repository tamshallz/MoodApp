import 'package:flutter/material.dart';

import 'mood_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mood App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MoodHome(),
    );
  }
}