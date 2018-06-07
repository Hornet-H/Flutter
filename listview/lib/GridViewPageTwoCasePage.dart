import 'package:flutter/material.dart';
import 'package:listview/WindowUtils.dart';

class GridViewPageTwoCasePage extends StatefulWidget {
  @override
  createState() => new GridViewPageTwoCasePageState();
}

class GridViewPageTwoCasePageState extends State<GridViewPageTwoCasePage> {
  final ScrollController _gridViewController = new ScrollController();

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('GridView展示'),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.list), onPressed: null)
          ],
        ),
        body: new Container(
          padding: const EdgeInsets.only(left: 16.0,right: 16.0),
          child: new NotificationListener(
            child: buildGridView(),
              onNotification:(ScrollNotification note){
//                print(_gridViewController.offset);
//                print(note.depth);
                print(note.metrics);
                print(note.context);
              }
          ),
        ));
  }

  GridView buildGridView() {
    return new GridView(
            controller: _gridViewController,
//            primary: true,
            //控制GridView是否可以滚动
            scrollDirection: Axis.vertical,
            reverse: false,
            //展示顺序反过来了
            gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: (WindowUtils.getScreenWidth() -32)/ 2.0,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 16.0,
              childAspectRatio: 1.0,
            ),
            children: [
              new Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: new Image.asset('images/lib/landscape_0.jpg'),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: new Image.asset('images/lib/landscape_1.jpg'),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: new Image.asset('images/lib/landscape_2.jpg'),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: new Image.asset('images/lib/landscape_3.jpg'),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: new Image.asset('images/lib/landscape_4.jpg'),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: new Image.asset('images/lib/landscape_5.jpg'),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: new Image.asset('images/lib/landscape_6.jpg'),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: new Image.asset('images/lib/landscape_7.jpg'),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: new Image.asset('images/lib/landscape_8.jpg'),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: new Image.asset('images/lib/landscape_9.jpg'),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: new Image.asset('images/lib/landscape_10.jpg'),
              ),
            ]);
  }
}
