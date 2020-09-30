

import 'dart:async';

import 'package:flutter/material.dart';

class SearchBarController{
  StreamController<Widget> _controller=new StreamController<Widget>();
  Stream<Widget> get stream=>_controller.stream;
  Function get changeWidget =>_controller.sink.add;
  void dispose(){
    _controller.close();
  }
}
SearchBarController searchBarController=new SearchBarController();