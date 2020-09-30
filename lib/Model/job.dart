

import 'package:flutter/material.dart';

enum JobType {
  All,
  Developer,
  Design,
  Business,
  RealEstate,
  Accounts,
  Agriculture,
}
class Job{
  String name;
  String location;
  String organization;
  double salary;
  String currency;
  var icon;
  Job({this.currency="PKR",this.name="job", this.location="location",this.icon= const Icon(Icons.flag),this.organization="organization",this.salary=000});
 // List<JobType> get JobTypeList
  static List<JobType> get jobTypeList=> [
    JobType.All,
    JobType.Developer,
    JobType.Design,
    JobType.Business,
    JobType.RealEstate,
    JobType.Accounts,
    JobType.Agriculture,
//    "All",
//    "IT",
//    "Design",
//    "Business",
//    "RealEstate",
//    "Acc",
//    "Agri",
//    "Edu",
//    "Govt",
//    "Admin"
    ];
}