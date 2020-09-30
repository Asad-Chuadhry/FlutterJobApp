

import 'package:flutter/material.dart';

ThemeData lightTheme=ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.cyan,
  backgroundColor: Colors.black87,
  accentColor: Colors.white,
  iconTheme: IconThemeData(color: Colors.cyan),
  textTheme: TextTheme(
    body1: TextStyle(color: Colors.black),
    body2: TextStyle(color: Colors.white),
    // Hi name
    display1: TextStyle(color: Colors.grey,fontSize: 24),
    //Looking for a job
    display2: TextStyle(fontSize: 26)
  ),
  appBarTheme: AppBarTheme(
    brightness: Brightness.light,
    color: Colors.transparent,
    elevation: 0,

  ),
);