import 'dart:math';

import 'package:flutter/material.dart';

void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "第一个app",
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

class RaisedbuttonState extends State<Raisedbutton>{
 final _random=Random();
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
    child: Text("点击按钮"),
      onPressed: _onPressed,
    );
  }

  void _onPressed()
  {
    showDialog(context: context,
        builder: (_){
          return AlertDialog(content: Text("${_random.nextInt(6)}  ${_random.nextInt(6)+1}");
        }
    );
  }
}






