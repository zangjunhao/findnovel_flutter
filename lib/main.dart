import 'package:first_flutter/second.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:english_words/english_words.dart';
void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "重邮查照",
     routes: {
   "secondPage":(context)=>new SecondPage(),
   },
     home: Scaffold(

       appBar: AppBar(
         title: Text("重邮查照"),
       ),
       body:
      Wrap(
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 30.0,
        runSpacing: 30.0,

       children: <Widget>[
         Container(
           padding: EdgeInsets.all(20.0),
//           margin: EdgeInsets.all(20.0),
           //color: Colors.orange,

           child:  TextField(
          autofocus: true,
          maxLines: 1,
          decoration: InputDecoration(
            labelText: "查询名",
            labelStyle: TextStyle(fontSize: 19.0),
            hintText: "输入你要查询的名字或者学号",
            hintStyle: TextStyle(fontSize: 17.0)
          ),
        ),),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
           children: <Widget>[
             Container(
               width: 200.0,
               height: 50.0,
                margin:EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                color: Colors.orange,
               transform: Matrix4.rotationZ(-.2),
               child:
                   DecoratedBox(decoration:BoxDecoration(gradient: LinearGradient(colors:[Colors.lightBlueAccent,Colors.purpleAccent]),
                      // borderRadius:BorderRadius.circular(50.0)
                   ),
              child:
                       RaisedButton(
                 elevation: 5.0,
             color: Colors.transparent,
             splashColor: Colors.transparent,
          // shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0)),
             onPressed: ()=>{},child: Text("查   询",style: TextStyle(color: Colors.black,fontSize: 16.5),),),
                   ))
         ],),
        ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            const Text('I\'m dedicating every day to you'),
            const Text('Domestic life was never quite my style'),
            const Text('When you smile, you knock me out, I fall apart'),
            const Text('And I thought I was so smart'),
          ],
        ),
       ],
          )
      )
     );
  }

}






