import 'package:flutter/material.dart';
import 'package:listview/WindowUtils.dart';

class GridViewPage extends StatefulWidget {
  @override
  createState() => new GridViewPageState();
}

class GridViewPageState extends State<GridViewPage> {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('GridView展示'),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.list), onPressed: null)
          ],
        ),
        body: new GridView(
          scrollDirection:Axis.vertical,
          reverse:true,//展示顺序反过来了
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio:2.5,
            ),
            children: [
              new Image.asset('images/lib/landscape_0.jpg'),
              new Image.asset('images/lib/landscape_1.jpg'),
              new Image.asset('images/lib/landscape_2.jpg'),
              new Image.asset('images/lib/landscape_3.jpg'),
              new Image.asset('images/lib/landscape_4.jpg'),
            ]));
  }
}
