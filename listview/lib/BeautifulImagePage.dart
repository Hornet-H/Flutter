import 'package:flutter/material.dart';
import 'package:listview/WindowUtils.dart';

class BeautifulImagePage extends StatefulWidget {
  @override
  createState() => new BeautifulImagePageState();
}

class BeautifulImagePageState extends State<BeautifulImagePage> {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('beautiful'),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.list), onPressed: null)
          ],
        ),
        body: new Column(
          children: <Widget>[
            new Image.asset('images/lake.jpg'),
            new Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              new Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: new Text('Oeschinen Lake Campground',
                            style: new TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ))),
                    new Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: new Text('Kandersteg, Switzerland',
                            style: new TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: new Color(0xFFCCCCAA),
                            ))),
                    new Container(
                      padding: EdgeInsets.only(top: 8.0),
                      child: new Row(
                        children: <Widget>[
                          new Column(
                            children: <Widget>[
                              new Icon(
                                Icons.call,
                                color: Color(0xFFE71d36),
                              ),
                              new Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: new Text('Route',
                                  style: new TextStyle(fontSize: 10.0,
                                      color: new Color(0xFFe71d36)),
                                ),)
                            ],
                          ),
                          new Column(
                            children: <Widget>[
                              new Icon(
                                Icons.near_me,
                                color: Color(0xFFE71d36),
                              ),
                              new Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: new Text('SHARE',
                                  style: new TextStyle(fontSize: 10.0,
                                      color: new Color(0xFFe71d36)),
                                ),)
                            ],
                          ),
                          buildColumn(),


                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                      width: WindowUtils.getScreenWidth() - 32,
                      height: 52.0,
                    ),
                    textSectionFunc(),
                  ],
                ),
              )
            ]),
          ],
        ));
  }

  Column buildColumn() {
    return new Column(
      children: <Widget>[
        new Icon(
          Icons.share,
          color: Color(0xFFE71d36),

        ),
        new Padding(
          padding: EdgeInsets.only(top: 8.0), child: new Text('CALL',
          style: new TextStyle(fontSize: 10.0, color: new Color(0xFFe71d36)),
        ),)
      ],
    );
  }

  Widget textSectionFunc() {
    return new Container(
      width: WindowUtils.getScreenWidth() - 32,
      padding: EdgeInsets.all(16.0),
      child: new Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
//          textDirection:TextDirection.ltr,
        style: new TextStyle(color: new Color(0xFFCCCCCC)),
      ),
    );
  }
}

