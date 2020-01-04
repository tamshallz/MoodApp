import 'package:flutter/material.dart';
import 'package:mood_app/screens/angry.dart';
import 'package:mood_app/screens/happy.dart';
import 'package:mood_app/screens/sad.dart';

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
      initialRoute: MoodHome.id,
//When using initialRoute, you don't use it with the home cos they do one and the same thing
//      home: WelcomeScreen(),
      routes: {
        MoodHome.id: (context) => MoodHome(),
        SadFacePage.id: (context) => SadFacePage(),
        HappyFace.id: (context) => HappyFace(),
        AngryScreen.id: (context) => AngryScreen(),
      },
    );
  }
}
