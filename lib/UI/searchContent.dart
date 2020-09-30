

import 'package:JobApp/widgets/jobListItem.dart';
import 'package:flutter/material.dart';

import '../dummyData.dart';

class SearchContent extends StatelessWidget {
  final String searchJob;
  SearchContent(this.searchJob);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...designJobList,
        ...itJobList,
        ...businessJobList,
        ...realStateJobList,
        ...accJobList,
        ...agriJobList,
      ].map((item) {
        if(item.name.toLowerCase().contains(searchJob.toLowerCase()))
          return getJobListItem(context,item);
        else return Container();
      }).toList(),
    );
  }
}
