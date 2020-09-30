

import 'package:JobApp/UI/homeContent.dart';
import 'package:JobApp/UI/homePage.dart';
import 'package:JobApp/UI/searchContent.dart';
import 'package:JobApp/stateManagement/homeContentController.dart';
import 'package:JobApp/stateManagement/searchBarController.dart';
import 'package:flutter/material.dart';

class SearchJobBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.6,
            height: 50,
            child: TextFormField(
              onFieldSubmitted: (val){
                searchBarController.changeWidget(Container());
                homeContentController.changeContent(HomeContent());
              },
              onChanged: (val){
                homeContentController.changeContent(SearchContent(val));
              },
              decoration: InputDecoration(
                  hintText: "Search a job",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )
                  )
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.check_circle,color: Colors.cyan,size:40),
            onPressed: (){
              searchBarController.changeWidget(Container());
              homeContentController.changeContent(HomeContent());
            },
          )
        ],
    );
  }
}
