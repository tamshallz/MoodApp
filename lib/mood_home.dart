import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoodHome extends StatelessWidget {
  Widget colorButtonShape(String buttonText, Color color, Function onClick) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: RaisedButton(
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 20),
        ),
          onPressed: (){},
          padding: EdgeInsets.all(15),
          color: color,
          shape: StadiumBorder(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/smiley-face.png', height: 80),
            SizedBox(
              height: 50,
            ),
            Text('Hey! There', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(23),
              child: Text(
                  'Tell me about your mood today, Just click any of the smiley below',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 120, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Try it',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(width: 20),
                  Icon(FontAwesomeIcons.handPointDown, size: 40,color: Colors.green[800])
                ],
              ),
            ),
            Row(
              children: <Widget>[
                colorButtonShape('Happy', Color(0xffFFE382), (){}),
                colorButtonShape('Angry', Color(0xffFF8291),(){}),
                colorButtonShape('Sad', Color(0xff82E8FF), (){}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
