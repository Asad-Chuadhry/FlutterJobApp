

import 'dart:async';

import 'package:JobApp/Model/job.dart';
import 'package:JobApp/dummyData.dart';

class JobListController{
  StreamController<List<Job>> _controller=new StreamController<List<Job>>();
  Stream<List<Job>> get stream=> _controller.stream;
  void changeJobList(JobType jobType){
    if(jobType==JobType.All) {
      List<Job> temp = [
        ...designJobList,
        ...itJobList,
        ...businessJobList,
        ...realStateJobList,
        ...accJobList,
        ...agriJobList,
      ];
      _controller.sink.add(temp);
    }
    else if(jobType==JobType.Developer)
      _controller.sink.add(itJobList);
    else if(jobType==JobType.Design)
      _controller.sink.add(designJobList);
    else if(jobType==JobType.Business)
      _controller.sink.add(businessJobList);
    else if(jobType==JobType.RealEstate)
      _controller.sink.add(realStateJobList);
    else if(jobType==JobType.Accounts)
      _controller.sink.add(accJobList);
    else _controller.sink.add(agriJobList);
  }
  void dispose(){
    _controller.close();
  }
}