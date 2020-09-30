

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget{
  final Widget child;
  final double width;
  final double height;
  final double radius;
  MyContainer({this.radius=15,this.child=const Text("Default"),this.height= 50,this.width=50});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(8),
      child: Center(child: child),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Theme.of(context).backgroundColor,
      ),
    );
  }
}

