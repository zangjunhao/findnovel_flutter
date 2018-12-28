import 'package:first_flutter/second.dart';
import 'http_request.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:convert';
import 'package:english_words/english_words.dart';

List list=new List(0);
void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "小说查找器",
     routes: {
   "secondPage":(context)=>new SecondPage(),
   },
     home: new MyHomePage(),
   );}
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage>{
  http_request http=new http_request("https://www.apiopen.top/novelSearchApi?name=");
  Callback1 callback=new Callback1();
  TextEditingController textEditingController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
        appBar: AppBar(
          title: Text("小说查找"),
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
                controller: textEditingController,
                decoration: InputDecoration(
                    labelText: "查询名",
                    labelStyle: TextStyle(fontSize: 19.0),
                    hintText: "输入你要查询的小说",
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
                        onPressed:(){
                        //  debugPrint(textEditingController.text);
                          http.request(this,textEditingController.text, callback);
                        },child: Text("查   询",style: TextStyle(color: Colors.black,fontSize: 16.5),),),
                    ))
             
              ],),
            Container(
               height: 500.0,
               child:  ListView.builder(
                itemExtent: 50.0,
                itemCount: list.length,
                itemBuilder:(BuildContext context, int index) {
                  return ListTile(title: Text("${list[index]}"));
                }))
          ],
        )
    );
  }


}

class Callback1 implements Callback{
  State state;
  @override
  void finish(String respone,State state) {
    state.setState((){});
    Map<String,dynamic> user=jsonDecode(respone);
   list=user['data'];
    state.setState((){});
  }

}







