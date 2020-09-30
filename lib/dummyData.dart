
import 'package:flutter/material.dart';

import 'Model/job.dart';
List<Job> itJobList=new List<Job>();
List<Job> designJobList=new List<Job>();
List<Job> businessJobList=new List<Job>();
List<Job> realStateJobList=new List<Job>();
List<Job> accJobList=new List<Job>();
List<Job> agriJobList=new List<Job>();
List<Job> eduJobList=new List<Job>();
List<Job> govtJobList=new List<Job>();
List<Job> adminJobList=new List<Job>();

void addDummyDataToLists(){
  _addDummyDataITList();
  _addDataToDesignList();
  _addDataToBusinessList();
  _addDataTORealEstateList();
  _addDataToAccountsList();
  _addDataToAgriList();
}
void _addDataToAgriList(){
  agriJobList.add(Job(
      organization: "Agriculture Organization",
      name: "Agriculture Engineer",
      currency: "\$",
      salary: 400050,
      icon: Icons.flaky,
      location: "Islamabad Pakistan"
  ));
}
void _addDataToAccountsList(){
  accJobList.add(Job(
      organization: "Acountants Dept",
      name: "Acountant One",
      currency: "\$",
      salary: 200000,
      icon: Icons.access_alarms_sharp,
      location: "Islamabad Pakistan"
  ));
  accJobList.add(Job(
      organization: "Acountants Dept",
      name: "Acountant Three",
      currency: "\$",
      salary: 200000,
      icon: Icons.access_alarms,
      location: "Lahore Pakistan"
  ));
  accJobList.add(Job(
      organization: "Acountants Dept",
      name: "Acountant Two",
      currency: "\$",
      salary: 200000,
      icon: Icons.access_alarms_sharp,
      location: "Islamabad Pakistan"
  ));
}
void _addDataTORealEstateList(){
  realStateJobList.add(Job(
    organization: "real estaters",
    name: "Real Estate one",
    currency: "\$",
    salary: 244443,
    icon: Icons.face,
    location: "Islamabad Pakistan"
  ));
  realStateJobList.add(Job(
      organization: "real Two",
      name: "Real Estate one",
      currency: "\$",
      salary: 244443,
      icon: Icons.face_retouching_natural,
      location: "Islamabad Pakistan"
  ));
  realStateJobList.add(Job(
      organization: "real estaters Three",
      name: "Real Estate one",
      currency: "PKR",
      salary: 121443,
      icon: Icons.height,
      location: "Islamabad Pakistan"
  ));

}

void _addDataToBusinessList(){
  businessJobList.add(Job(
    location: "USA, Canada",
    icon: Icons.add_business,
    salary: 5600,
    currency: "EURO",
    name: "Business Manager",
    organization: "Micro Phonaa TLD"
  ));
  businessJobList.add(Job(
      location: "USA, Canada",
      icon: Icons.add_business_outlined,
      salary: 5600,
      currency: "EURO",
      name: "Manager Assistant",
      organization: "Micro Phonaa TLD"
  ));
  businessJobList.add(Job(
      location: "USA, Canada",
      icon: Icons.add_business,
      salary: 5600,
      currency: "EURO",
      name: "HR Manager",
      organization: "Micro Phonaa TLD"
  ));
  businessJobList.add(Job(
      location: "USA, Canada",
      icon: Icons.add_business,
      salary: 5600,
      currency: "EURO",
      name: "Business Manager",
      organization: "Micro Phonaa TLD"
  ));
  businessJobList.add(Job(
      location: "USA, Canada",
      icon: Icons.add_business_outlined,
      salary: 5600,
      currency: "EURO",
      name: "Manager Assistant",
      organization: "Micro Phonaa TLD"
  ));

}
void _addDataToDesignList(){
  designJobList.add(Job(
    organization: "Bista Techno pvt",
    name: "UI/Ux Designer",
    currency: "INR",
    salary: 450000,
    icon: Icons.add,
    location: "Banglore, India",
  ));
  designJobList.add(Job(
    organization: "Tista pvt",
    name: "Front-End Designer",
    currency: "Euro",
    salary: 423500,
    icon: Icons.bar_chart,
    location: "City, Germany",
  ));
}

void _addDummyDataITList() {
  itJobList.add(Job(
      salary: 4005,
      location: "Lahore Pakistan",
      icon: Icons.android_sharp,
      currency: "\$",
      name: "Android Developer",
      organization: "PakVista Technologies"
  ));
  itJobList.add(Job(
      salary: 520000,
      location: "Karachi Pakistan",
      icon: Icons.flag,
      currency: "PKR",
      name: "Flutter Developer",
      organization: "Oreo Technologies"
  ));
  itJobList.add(Job(
      salary: 100330,
      location: "Delhi, India",
      icon: Icons.phone_iphone,
      currency: "PKR",
      name: "IOs Developer",
      organization: "HiTech Software Company"
  ));
  itJobList.add(Job(
      salary: 520000,
      location: "Karachi Pakistan",
      icon:Icons.android_sharp,
      currency: "PKR",
      name: "Flutter Developer",
      organization: "Oreo Technologies"
  ));
  itJobList.add(Job(
      salary: 4005,
      location: "Lahore Pakistan",
      icon:Icons.android_sharp,
      currency: "\$",
      name: "Android Developer",
      organization: "PakVista Technologies"
  ));
  itJobList.add(Job(
      salary: 520000,
      location: "Karachi Pakistan",
      icon: Icons.seven_k,
      currency: "PKR",
      name: "Flutter Developer",
      organization: "Oreo Technologies"
  ));
  itJobList.add(Job(
      salary: 100330,
      location: "Delhi, India",
      icon: Icons.phone_iphone,
      currency: "PKR",
      name: "IOs Developer",
      organization: "HiTech Software Company"
  ));
  itJobList.add(Job(
      salary: 520000,
      location: "Karachi Pakistan",
      icon: Icons.android_sharp,
      currency: "PKR",
      name: "Flutter Developer",
      organization: "Oreo Technologies"
  ));
  itJobList.add(Job(
      salary: 100330,
      location: "Delhi, India",
      icon: Icons.phone_iphone,
      currency: "PKR",
      name: "IOs Developer",
      organization: "HiTech Software Company"
  ));
}