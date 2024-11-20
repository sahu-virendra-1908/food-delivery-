import 'package:flutter/material.dart';

class Appwidget {
  static TextStyle app_text_style() {
    return TextStyle(
        fontFamily: 'Poppins',
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold);
  }
  static TextStyle bold_text(){
    return TextStyle(
        fontFamily: 'Poppins',
        fontSize: 50,
        color: Colors.black,
        fontWeight: FontWeight.bold);
  }

  static TextStyle   lightText (){
    return  TextStyle(
        fontFamily: 'Poppins',
        fontSize: 30,
        color: Colors.black38,
       );
  }
}
