

import 'dart:async';
import 'package:JobApp/global.dart';

class BottomBarController{
  StreamController<BottomAppBarBtn> _controller=
  new StreamController<BottomAppBarBtn>.broadcast();
  Stream<BottomAppBarBtn> get stream=>_controller.stream;
  Function get changeButton=>_controller.sink.add;
  void dispose(){
    _controller.close();
  }
}