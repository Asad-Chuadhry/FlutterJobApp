import 'package:JobApp/dummyData.dart';
import 'package:JobApp/theme/themes.dart';
import 'package:flutter/material.dart';
import 'UI/homePage.dart';

void main() {
  addDummyDataToLists();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: lightTheme,
        home: HomePage()
    );
  }

}