

import 'package:JobApp/Model/job.dart';
import 'package:JobApp/stateManagement/jobListController.dart';
import 'package:flutter/material.dart';

import '../dummyData.dart';
import 'jobListItem.dart';

class JobListView extends StatelessWidget {
  final JobListController jobListController;
  JobListView(this.jobListController);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Job>>(
      stream: jobListController.stream,
        initialData: [
            ...designJobList,
            ...itJobList,
            ...businessJobList,
            ...realStateJobList,
            ...accJobList,
            ...agriJobList,
        ],
        builder:(context,jobList){
          return Container(
            height: MediaQuery.of(context).size.height*0.6,
            child: ListView(
                shrinkWrap: true,
              children: jobList.data.map((e) => getJobListItem(context,e)).toList(),
            ),
          );
        });
  }
}
