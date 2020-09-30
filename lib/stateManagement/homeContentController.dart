

import 'dart:async';

import 'package:flutter/cupertino.dart';

class HomeContentController{
  StreamController<Widget> _controller=new StreamController<Widget>.broadcast();
  Stream<Widget> get stream=>_controller.stream;
  Function get changeContent=>_controller.sink.add;
  void dispose(){
    _controller.close();
  }
}
HomeContentController homeContentController=new HomeContentController();