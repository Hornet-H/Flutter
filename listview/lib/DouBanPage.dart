import 'package:flutter/material.dart';
import 'package:listview/WindowUtils.dart';

class DouBanPage extends StatefulWidget {
  @override
  createState() => new DouBanPageState();
}

class DouBanPageState extends State<DouBanPage> {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('豆瓣数据'),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.list), onPressed: null)
          ],
        ),
        body: new Column());
  }



}

