import 'package:first_flutter/second.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
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


  @override
  Widget build(BuildContext context) {
    debugPrint("state中的build方法执行了");
    final wordPair=new WordPair.random();

    return
      RaisedButton(
      child:
    Image.asset('images/dapang.jpg'),

      onPressed: () {
        Navigator.pushNamed(context, "secondPage");
      },
    );

  }
}





