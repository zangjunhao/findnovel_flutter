import 'dart:math';

import 'package:first_flutter/second.dart';
import 'package:flutter/material.dart';

void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "第一个app",
     routes: {
   "secondPage":(context)=>new SecondPage(),
   },
     home: Scaffold(
       appBar: AppBar(
         title: Text("appBar的标题"),
       ),
       body: Center(
         child: Raisedbutton(),
       ),
     ),
   );
  }

}

class Raisedbutton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RaisedbuttonState();
  }

}

class RaisedbuttonState extends State<Raisedbutton> {

  int i = 0;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("$i"),
      onPressed: () {
        Navigator.pushNamed(context, "secondPage");
      },
    );

  }
}





