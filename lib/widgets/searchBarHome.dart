

import 'package:JobApp/UI/searchContent.dart';
import 'package:JobApp/stateManagement/homeContentController.dart';
import 'package:JobApp/stateManagement/searchBarController.dart';
import 'package:JobApp/widgets/myContainer.dart';
import 'package:JobApp/widgets/searchJobBar.dart';
import 'package:flutter/material.dart';

class SearchBarHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Hi Asad",style: Theme.of(context).textTheme.display1,),
              RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.display2,
                    text: "Looking For a ",
                    children: [
                      TextSpan(
                          style: TextStyle(fontWeight: FontWeight.w900,fontSize: 28),
                          text: "job"
                      ),
                      TextSpan(
                          style: Theme.of(context).textTheme.display2,
                          text: " ?"
                      )
                    ]
                ),
              )
            ],
          ),
          SizedBox(width: 20,),
          GestureDetector(
            onTap: (){
              searchBarController.changeWidget(SearchJobBar());
              homeContentController.changeContent(SearchContent(""));
            },
              child: MyContainer(child: Icon(Icons.search,size: 40,),width: 60,height: 60,))
        ],
      ),
    );
  }
}

