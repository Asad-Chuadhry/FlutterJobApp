

import 'package:JobApp/Model/jobDiscription.dart';
import 'package:JobApp/widgets/myContainer.dart';
import 'package:flutter/material.dart';

class DiscriptionPage extends StatelessWidget {
  final JobDiscription jobDiscription;
  BuildContext context;
  DiscriptionPage(this.jobDiscription);
  @override
  Widget build(BuildContext context) {
    this.context=context;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.4,
            color: Colors.cyan,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: getContentWidget(),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                )
              ),
              height: MediaQuery.of(context).size.height*0.7,
            ),
          ),
         Positioned(
              top: MediaQuery.of(context).size.height*0.15,
              left: MediaQuery.of(context).size.width*0.38,
              child: MyContainer(
                height: 100,
                width: 100,
                child: Icon(jobDiscription.icon,size: 60,color: Colors.white,),
              ),
            ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 50,left: 20),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                 width: 50,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(15)
                 ),
                 // onPressed: (){},
                  child: Icon(Icons.arrow_back),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite_outline,size: 50,),
              SizedBox(width: 50),
              MyContainer(
                width: MediaQuery.of(context).size.width*0.5,
                child: Text("Apply",style: TextStyle(color: Theme.of(context).accentColor,fontSize: 20),),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget getContentWidget(){
    return Padding(
      padding: const EdgeInsets.only(
          left:20,
        right: 20,
        top: 60,
        bottom: 8
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            ListTile(
              title: Text(jobDiscription.name,style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),),
              subtitle: Text(jobDiscription.location,style: TextStyle(
                fontSize: 18
              ),),
              trailing: MyContainer(
                width: 120,
                child: Text("${jobDiscription.salary.toString()} ${jobDiscription.currency}",
                  style:TextStyle(color: Colors.white) ,)
                ,),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                  children: [
                    Text("Discription",style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 10,),
                    Text(jobDiscription.discription,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16),),
                    SizedBox(height: 20,),
                    Text("Guidlines",style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 10,),
                    Text(jobDiscription.guidelines,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16),),
                  ],
                ),
            ),
          ],
      ),
    );
  }
}
