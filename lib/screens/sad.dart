import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mood_app/screens/assets/input_icon.dart';
import 'package:mood_app/screens/dashboard.dart';

import 'assets/colorsused.dart';

class SadFacePage extends StatefulWidget {
  static String id = 'sadface_page';

  @override
  _SadFacePageState createState() => _SadFacePageState();
}

class _SadFacePageState extends State<SadFacePage> {
  static DateTime now = DateTime.now();

  String formatTime = DateFormat.jm().format(now).toString();
  String formatDate = DateFormat.yMMMMd().format(now).toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueColor,
      appBar: AppBar(
        backgroundColor: kBlueColor,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, DashBoard.id);
            },
            icon: Icon(Icons.dashboard),
            color: kBlackColor,
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.close),
          color: kBlackColor,
        ),
        centerTitle: true,
        title: Text('Current Mood',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w600, color: kBlackColor)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Column(children: [
                Image.asset(
                  'images/sadface.png',
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 40),
                  child: Text('Sad',
                      style:
                          TextStyle(fontSize: 70, fontWeight: FontWeight.bold)),
                ),
                Text('$formatDate',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text('$formatTime',
                      style: TextStyle(
                        fontSize: 18,
                        color: kBlackColor,
                      )),
                ),
              ]),
            ),
            InputIcon()
          ],
        ),
      ),
    );
  }
}
