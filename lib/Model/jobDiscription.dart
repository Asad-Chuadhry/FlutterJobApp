

import 'package:JobApp/Model/job.dart';
import 'package:flutter/cupertino.dart';

class JobDiscription extends Job{
  String discription;
  String guidelines;
  JobDiscription({this.discription,this.guidelines,@required Job job}):super(
    icon: job.icon,
    location: job.location,
    salary: job.salary,
    currency: job.currency,
    name: job.name,
    organization: job.organization
  );
}