import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class HappyFace extends StatefulWidget {
  static String id = 'happy_face';

  @override
  _HappyFaceState createState() => _HappyFaceState();
}

class _HappyFaceState extends State<HappyFace> {
  static DateTime now = DateTime.now();

  String formatTime = DateFormat.jm().format(now).toString();
  String formatDate = DateFormat.yMMMM().format(now).toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFE382),
      appBar: AppBar(
        backgroundColor: Color(0xffFFE382),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.dashboard),
            color: Colors.black54,
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.close),
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text('Current Mood',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Column(children: [
                Image.asset(
                  'images/happy.png',
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 40),
                  child: Text('Happy',
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
                        color: Colors.black54,
                      )),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 20, top: 80),
              child: Row(children: [
                Container(
                    width: 250,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black38),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          hintText: 'Add a reason',
                          hintStyle: TextStyle(color: Colors.black38)),
                    )),
                SizedBox(
                  width: 10,
                ),
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.black,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.paperPlane,
                        color: Colors.white70,
                      ),
                    )),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
