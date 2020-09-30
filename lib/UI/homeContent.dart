

import 'package:JobApp/stateManagement/jobListController.dart';
import 'package:JobApp/stateManagement/jobSelectorController.dart';
import 'package:JobApp/widgets/JobListView.dart';
import 'package:JobApp/widgets/homeCarousel.dart';
import 'package:JobApp/widgets/jobSelectorListView.dart';
import 'package:JobApp/widgets/searchBarHome.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

import '../dummyData.dart';

class HomeContent extends StatelessWidget {
  final JobListController jobListController=new JobListController();
  final JobSelectorController jobSelectorController=new JobSelectorController();
  final CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SearchBarHome(),
          SizedBox(height: 10,),
          JobCarousel(itJobList),
          JobSelectorListView(jobListController),
          JobListView(jobListController)
        ],
      ),
    );
  }
}
