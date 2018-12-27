import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "我是第二页",
            style: TextStyle(
              fontSize: 25.0
            ),
          ),
        ),
        body:

        Center(
          child: Image.asset('images/dapang.jpg'),
        ),
      ),
    );
  }

}