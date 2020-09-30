

import 'package:JobApp/Model/job.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class JobCarousel extends StatefulWidget {
  final List<Job> jobList;
  JobCarousel(this.jobList);
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<JobCarousel> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {

    return Column(
          children: [
            CarouselSlider(
              items: widget.jobList.map(
                      (job) => Container(
                        padding: EdgeInsets.only(left: 10,right: 20),
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: ListTile(
                          title: Text(job.name,style: TextStyle(
                              color:Colors.cyan,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),),
                          subtitle: Text(job.location,
                            style: TextStyle(color:Theme.of(context).accentColor,fontSize: 16),),
                          trailing: Icon(job.icon,color: Colors.cyanAccent,size: 50,),
                        ),
                      )
                  )
              ).toList(),
              options: CarouselOptions(
                  viewportFraction: 0.9,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 6.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.jobList.map((item) {
                int index = widget.jobList.indexOf(item);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
          ]
    );
  }
}