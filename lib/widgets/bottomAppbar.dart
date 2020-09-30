
import 'package:JobApp/UI/favorateContent.dart';
import 'package:JobApp/UI/homeContent.dart';
import 'package:JobApp/UI/messageContent.dart';
import 'package:JobApp/UI/settingContent.dart';
import 'package:JobApp/global.dart';
import 'package:JobApp/stateManagement/bottomBarSelector.dart';
import 'package:JobApp/stateManagement/homeContentController.dart';
import 'package:flutter/material.dart';
import 'myContainer.dart';

class MyBottomAppBar extends StatelessWidget {
  final BottomBarController _bottomBarController=new BottomBarController();
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StreamBuilder<BottomAppBarBtn>(
          initialData: BottomAppBarBtn.HOME,
          stream: _bottomBarController.stream,
          builder: (context, snapshot) {
            return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: _getButtonList(snapshot.data)
            );
          }
        ),
      ),
    );
  }
  List<Widget> _getButtonList(BottomAppBarBtn btn){
    if(btn==BottomAppBarBtn.HOME)
      return  [   MyContainer(
                width: null,
                height: 60,
                child: IconButton(padding: EdgeInsets.all(0),
                    icon: Icon(Icons.home,size: 40,),
                    onPressed:(){ _bottomBarController.changeButton(BottomAppBarBtn.HOME);}
                )
            ),
            SizedBox(width: 40),
            IconButton(icon: Icon(Icons.message,size: 40,),
                onPressed: (){
              homeContentController.changeContent(MessageContent());
              _bottomBarController.changeButton(BottomAppBarBtn.MESSAGE);}),
            SizedBox(width: 40),
            IconButton(icon: Icon(Icons.favorite,size: 40,),
                onPressed:(){
              homeContentController.changeContent(FavorateContent());
              _bottomBarController.changeButton(BottomAppBarBtn.FAVOURITE);}),
            SizedBox(width: 40),
            IconButton(icon: Icon(Icons.settings,size: 40,),
                onPressed:(){
              homeContentController.changeContent(SettingContent());
              _bottomBarController.changeButton(BottomAppBarBtn.SETTING);})
          ];
    else if(btn==BottomAppBarBtn.MESSAGE)
      return  [
        IconButton(icon: Icon(Icons.home,size: 40,),
            onPressed:(){
          homeContentController.changeContent(HomeContent());
          _bottomBarController.changeButton(BottomAppBarBtn.HOME);}),
        SizedBox(width: 40),
        MyContainer(
            width: null,
            height: 60,
            child: IconButton(padding: EdgeInsets.all(0),
                icon: Icon(Icons.message,size: 40,),
                onPressed:(){ _bottomBarController.changeButton(BottomAppBarBtn.MESSAGE);}
            )
        ),
        SizedBox(width: 40),
        IconButton(icon: Icon(Icons.favorite,size: 40,),
            onPressed:(){
          homeContentController.changeContent(FavorateContent());
          _bottomBarController.changeButton(BottomAppBarBtn.FAVOURITE);}),
        SizedBox(width: 40),
        IconButton(icon: Icon(Icons.settings,size: 40,),
            onPressed:(){
          homeContentController.changeContent(SettingContent());
          _bottomBarController.changeButton(BottomAppBarBtn.SETTING);})
      ];
    else if(btn==BottomAppBarBtn.FAVOURITE)
      return  [
        IconButton(icon: Icon(Icons.home,size: 40,),
            onPressed:(){
          homeContentController.changeContent(HomeContent());
          _bottomBarController.changeButton(BottomAppBarBtn.HOME);}),
        SizedBox(width: 40),
        IconButton(icon: Icon(Icons.message,size: 40,),
            onPressed:(){
          homeContentController.changeContent(MessageContent());
          _bottomBarController.changeButton(BottomAppBarBtn.MESSAGE);}),
        SizedBox(width: 40),
        MyContainer(
            width: null,
            height: 60,
            child: IconButton(padding: EdgeInsets.all(0),
                icon: Icon(Icons.favorite,size: 40,),
                onPressed:(){ _bottomBarController.changeButton(BottomAppBarBtn.FAVOURITE);}
            )
        ),
        SizedBox(width: 40),
        IconButton(icon: Icon(Icons.settings,size: 40,),
            onPressed:(){
          homeContentController.changeContent(SettingContent());
          _bottomBarController.changeButton(BottomAppBarBtn.SETTING);})
      ];
    else return  [
        IconButton(icon: Icon(Icons.home,size: 40,),
            onPressed:(){
          homeContentController.changeContent(HomeContent());
          _bottomBarController.changeButton(BottomAppBarBtn.HOME);}),
        SizedBox(width: 40),
        IconButton(icon: Icon(Icons.message,size: 40,),
            onPressed:() {
          homeContentController.changeContent(MessageContent());
          _bottomBarController.changeButton(BottomAppBarBtn.MESSAGE);}),
        SizedBox(width: 40),
        IconButton(icon: Icon(Icons.favorite,size: 40,),
            onPressed:(){
          homeContentController.changeContent(FavorateContent());
          _bottomBarController.changeButton(BottomAppBarBtn.FAVOURITE);}),
        SizedBox(width: 40),
        MyContainer(
            width: null,
            height: 60,
            child: IconButton(padding: EdgeInsets.all(0),
                icon: Icon(Icons.settings,size: 40,),
                onPressed: (){_bottomBarController.changeButton(BottomAppBarBtn.SETTING);}
            )
        ),
      ];
  }
}
