

import 'package:JobApp/Model/job.dart';
import 'package:JobApp/stateManagement/jobListController.dart';
import 'package:JobApp/stateManagement/jobSelectorController.dart';
import 'package:JobApp/widgets/myContainer.dart';
import 'package:flutter/material.dart';

class JobSelectorListView extends StatelessWidget {
  final JobSelectorController jobSelectorController=new JobSelectorController();
  final JobListController jobListController;
  JobSelectorListView(this.jobListController);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: StreamBuilder<JobType>(
        initialData: JobType.All,
        stream: jobSelectorController.stream,
        builder: (context, snapshot) {
          return ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children:Job.jobTypeList.map((e) {
                if(snapshot.data==e)
                  return Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      child: MyContainer(
                        width: null,
                        radius: 20,
                        child: Text(snapshot.data.toString().substring(8),
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 17
                          ),
                        ),
                      ),
                    ),
                  );
                return GestureDetector(
                  onTap: (){
                    jobSelectorController.changeSelection(e);
                    jobListController.changeJobList(e);
                  },
                  child: Container(
                    child: Text(e.toString().substring(8),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                      ),
                    ),
                    padding: EdgeInsets.only(
                        left: 20, top: 8, bottom: 8),
                  ),
                );
              }
              ).toList()
          );
        }
      ),
    );
  }
}

