import 'package:flutter/material.dart';


//align
//bottomCenter    (0.5, 1.0)    底部中心
//bottomLeft    (0.0, 1.0)    左下角
//bottomRight    (1.0, 1.0)    右下角
//center    (0.5, 0.5)    水平垂直居中
//centerLeft    (0.0, 0.5)    左边缘中心
//centerRight    (1.0, 0.5)    右边缘中心
//topCenter    (0.5, 0.0)    顶部中心
//topLeft    (0.0, 0.0)    左上角
//topRight    (1.0, 0.0)    右上角

class AlignDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('对齐'),
      ),
      body: new Stack(
          children: <Widget>[
            new Align(
              alignment: new FractionalOffset(0.0, 0.0),
              child: new Image.network('http://up.qqjia.com/z/25/tu32710_10.jpg'),
            ),
            new Align(
              alignment: FractionalOffset.bottomRight,
              child: new Image.network('http://up.qqjia.com/z/25/tu32710_11.jpg'),
            ),
          ]
      ),
    );
  }
}
void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter教程',
      home: new AlignDemo(),
    ),
  );
}