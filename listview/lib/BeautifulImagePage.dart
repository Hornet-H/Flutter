import 'package:flutter/material.dart';
import 'package:listview/WindowUtils.dart';

class BeautifulImagePage extends StatefulWidget {
  @override
  createState() => new BeautifulImagePageState();
}

class BeautifulImagePageState extends State<BeautifulImagePage> {
//  Widget build(BuildContext context) {
//    return new Scaffold(
//        appBar: new AppBar(
//          title: new Text('beautiful'),
//          actions: <Widget>[
//            new IconButton(icon: new Icon(Icons.list), onPressed: null)
//          ],
//        ),
//        body: new Column(
//          children: <Widget>[
//            new Image.asset('images/lake.jpg'),
//            new Row(mainAxisAlignment: MainAxisAlignment.start, children: [
//              new Padding(
//                padding: EdgeInsets.only(left: 16.0, right: 16.0),
//                child: new Column(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: [
//                    new Padding(
//                        padding: EdgeInsets.only(top: 8.0),
//                        child: new Text('Oeschinen Lake Campground',
//                            style: new TextStyle(
//                              fontSize: 16.0,
//                              fontWeight: FontWeight.bold,
//                            ))),
//                    new Padding(
//                        padding: EdgeInsets.only(top: 8.0),
//                        child: new Text('Kandersteg, Switzerland',
//                            style: new TextStyle(
//                              fontSize: 16.0,
//                              fontWeight: FontWeight.normal,
//                              color: new Color(0xFFCCCCAA),
//                            ))),
//                    new Container(
//                      padding: EdgeInsets.only(top: 8.0),
//                      child: new Row(
//                        children: <Widget>[
//                          new Column(
//                            children: <Widget>[
//                              new Icon(
//                                Icons.call,
//                                color: Color(0xFFE71d36),
//                              ),
//                              new Padding(
//                                padding: EdgeInsets.only(top: 8.0),child:  new Text('Route',
//                                style:new TextStyle(fontSize: 10.0,color: new Color(0xFFe71d36)),
//                              ),)
//                            ],
//                          ),
//                          new Column(
//                            children: <Widget>[
//                              new Icon(
//                                Icons.near_me,
//                                color: Color(0xFFE71d36),
//                              ),
//                              new Padding(
//                                padding: EdgeInsets.only(top: 8.0),child:  new Text('SHARE',
//                                style:new TextStyle(fontSize: 10.0,color: new Color(0xFFe71d36)),
//                              ),)
//                            ],
//                          ),
//                          buildColumn(),
//
//
//                        ],
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                      ),
//                      width: WindowUtils.getScreenWidth() - 32,
//                      height: 52.0,
//                    ),
//                    textSectionFunc(),
//                  ],
//                ),
//              )
//            ]),
//          ],
//        ));
//  }
//
//  Column buildColumn() {
//    return new Column(
//                          children: <Widget>[
//                            new Icon(
//                              Icons.share,
//                              color: Color(0xFFE71d36),
//
//                            ),
//                           new Padding(
//                             padding: EdgeInsets.only(top: 8.0),child:  new Text('CALL',
//                             style:new TextStyle(fontSize: 10.0,color: new Color(0xFFe71d36)),
//                           ),)
//                          ],
//                        );
//  }
//  Widget textSectionFunc (){
//    return new Container(
//      width: WindowUtils.getScreenWidth()-32,
//      padding: EdgeInsets.all(16.0),
//      child: new Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
//        softWrap: true,
////          textDirection:TextDirection.ltr,
//          style:new TextStyle(color: new Color(0xFFCCCCCC)),
//      ),
//    );
//  }


  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );

    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Top Lakes'),
        ),
        body: new ListView(
          children: [
            new Image.asset(
              'images/lake.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

}
