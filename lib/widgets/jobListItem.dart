

import 'package:JobApp/Model/job.dart';
import 'package:JobApp/Model/jobDiscription.dart';
import 'package:JobApp/UI/discriptionPage.dart';
import 'package:flutter/material.dart';

import 'myContainer.dart';

Widget getJobListItem(BuildContext context,Job job){
  return GestureDetector(
    onTap: (){
      JobDiscription jobDiscription=JobDiscription(
        discription: "A job description is an internal document that clearly states the essential job requirements, job duties, job responsibilities, and skills required to perform a specific role. A more detailed job description will cover how success is measured in the role so it can be used during performance evaluations."
          +"They are also known as a job specification, job profiles, JD, and position description (job PD)."
      +"Our job description directory contains job description examples covering all the most popular roles. We have examples of job descriptions you can quickly download and modify to suit your unique business requirements. You'll find a job description example for most common jobs.",
        guidelines: "A job description is a useful, plain-language tool that explains the tasks, duties, function and responsibilities of a position. It details who performs a specific type of work, how that work is to be completed, and the frequency and the purpose of the work as it relates to the organization's mission and goals. Job descriptions are used for a variety of reasons, such as determining salary levels, conducting performance reviews, clarifying missions, establishing titles and pay grades, and creating reasonable accommodation controls, and as a tool for recruiting. Job descriptions are useful in career planning, offering training exercises and establishing legal requirements for compliance purposes. A job description gives an employee a clear and concise resource to be used as a guide for job performance. Likewise, a supervisor can use a job description as a measuring tool to ensure that the employee is meeting job expectations.",
        job: job
      );
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DiscriptionPage(jobDiscription)));
    },
    child: ListTile(
      title: Text(job.name,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18),),
      leading: MyContainer(
          child: Icon(job.icon,color: Colors.cyan,)),
      subtitle: Text(job.location,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(job.salary.toString()),
          Text(job.currency)
        ],
      ),
    ),
  );
}