

import 'dart:async';

import 'package:JobApp/Model/job.dart';

class JobSelectorController{
  StreamController<JobType> _controller=new StreamController<JobType>.broadcast();
  Stream<JobType> get stream=>_controller.stream;
  Function get changeSelection=>_controller.sink.add;
  void dispose(){
    _controller.close();
  }

}