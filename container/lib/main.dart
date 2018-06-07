import 'package:flutter/material.dart';
class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Container(
        width: 300.0,
        height: 400.0,
        decoration: new BoxDecoration(
          color: const Color(0xfffce5cd),
          border: new Border.all(
            color: const Color(0xff6d9eeb),
            width: 8.0,
          ),
        ),
        child: new Text('容器演示'),
      ),
    );
  }
}

//这里是BoxDecoration的所有属性，其中shape！=null  decoration该属性用于设置容器的样式
//this.image,
//this.border,
//this.borderRadius,
//this.boxShadow,
//this.gradient,
//this.shape: BoxShape.rectangle,


void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter教程',
      home: new ContainerDemo(),
    ),
  );
}
