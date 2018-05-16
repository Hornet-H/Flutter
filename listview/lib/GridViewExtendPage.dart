
import 'package:flutter/material.dart';
import 'package:listview/WindowUtils.dart';

class GridViewExtendPage extends StatefulWidget {
  @override
  createState() => new GridViewExtendPageState();
}

class GridViewExtendPageState extends State<GridViewExtendPage> {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('GridView展示'),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.list), onPressed: null)
          ],
        ),
        body: new GridView.extent(
          maxCrossAxisExtent: 200.0,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: .0,
          crossAxisSpacing: 4.0,
          children:_buildGridTileList(12),
        )
    );
  }

  List<Container> _buildGridTileList(int count) {

    return new List<Container>.generate(
        count,
            (int index) =>
        new Container(child: new Image.asset('images/lib/landscape_${index}.jpg')));
  }

}

