


import 'package:JobApp/UI/homeContent.dart';
import 'package:JobApp/stateManagement/homeContentController.dart';
import 'package:JobApp/stateManagement/searchBarController.dart';
import 'package:JobApp/widgets/bottomAppbar.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.bar_chart),
        title: StreamBuilder<Widget>(
          initialData: Container(),
          stream: searchBarController.stream,
          builder: (context, snapshot) {
            return snapshot.data;
          }
        ),
      ),
      body: StreamBuilder<Widget>(
        initialData: HomeContent(),
        stream: homeContentController.stream,
        builder: (context, snapshot) {
          return snapshot.data;
        }
      ),
      bottomNavigationBar: MyBottomAppBar(),

    );
  }
}
