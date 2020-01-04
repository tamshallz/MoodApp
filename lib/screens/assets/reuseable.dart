import 'package:flutter/material.dart';


Widget hero(Color color, String text, String tag){
  return Flexible(
      child: Hero(
        tag: tag,
        child: Container(
          color: color,
          child: Text(text),
        ),
      ),
    );
}