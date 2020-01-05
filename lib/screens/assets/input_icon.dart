import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class InputIcon extends StatelessWidget {
  const InputIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}