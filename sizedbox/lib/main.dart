import 'package:flutter/material.dart';

class SizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('强制大小'),
      ),
      body: new Center(child: new SizedBox(
        width: 250.0,
        height: 250.0,
        child: new Container(
          decoration: new BoxDecoration(
            color: Colors.lightBlueAccent[100],
            border: new Border.all(
              color: const Color(0xff6d9eeb),
              width: 8.0,
            ),
            borderRadius:new BorderRadius.all(new Radius.circular(10.0)),
          ),
        ),
      ),)
    );
  }
}

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter教程',
      home: new SizedBoxDemo(),
    ),
  );
}
