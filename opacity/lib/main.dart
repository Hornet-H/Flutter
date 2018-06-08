import 'package:flutter/material.dart';
class OpacityDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('不透明度'),
      ),
      body: new Center(
        child: new Opacity(//透明度也是一个组件
          opacity: 0.8,
          child: new Container(
            width: 250.0,
            height: 100.0,
            decoration: new BoxDecoration(
              color: const Color(0xff000000),
            ),
          ),
        ),
      ),
    );
  }
}
void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter教程',
      home: new OpacityDemo(),
    ),
  );
}