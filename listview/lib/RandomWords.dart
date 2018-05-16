//import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
//import 'package:listview/BeautifulImagePage.dart';
//
//class RandomWords extends StatefulWidget {
//  @override
//  createState() => new RandomWordsState();
//}
//
//class RandomWordsState extends State<RandomWords> {
//  final _suggestions = <WordPair>[];
//  final _saved = new Set<WordPair>();
//  final _biggerFont = const TextStyle(fontSize: 18.0);
//
//  Widget _buildSuggestions() {
//    return new ListView.builder(
//        padding: const EdgeInsets.all(0.0),
//        // 对于每个建议的单词对都会调用一次itemBuilder，然后将单词对添加到ListTile行中
//        // 在偶数行，该函数会为单词对添加一个ListTile row.
//        // 在奇数行，该行书湖添加一个分割线widget，来分隔相邻的词对。
//        // 注意，在小屏幕上，分割线看起来可能比较吃力。
//        itemBuilder: (context, i) {
//          // 在每一列之前，添加一个1像素高的分隔线widget
//          if (i.isOdd) return new Container(
//            padding: EdgeInsets.only(left: 16.0,right: 16.0),
//            child: new Divider(),
//          );
//
//          // 语法 "i ~/ 2" 表示i除以2，但返回值是整形（向下取整），比如i为：1, 2, 3, 4, 5
//          // 时，结果为0, 1, 1, 2, 2， 这可以计算出ListView中减去分隔线后的实际单词对数量
//          final index = i ~/ 2;
//          // 如果是建议列表中最后一个单词对
//          if (index >= _suggestions.length) {
//            // ...接着再生成10个单词对，然后添加到建议列表
//            _suggestions.addAll(generateWordPairs().take(10));
//          }
//          return _buildRow(_suggestions[index]);
//        });
//  }
//
//  Widget build(BuildContext context) {
////    final wordPair = new WordPair.random(); // 删除这两行
////    return new Text(wordPair.asPascalCase);
//
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Startup Name Generator'),
//        actions:<Widget>[
//          new IconButton(icon: new Icon(Icons.list), onPressed:_pushSaved),
//          new IconButton(icon: new Icon(Icons.live_help), onPressed: _pushBeautifulPage)
//        ],
//      ),
//      body: _buildSuggestions(),
//    );
//  }
//
//  void _pushBeautifulPage(){
//    Navigator.push(
//      context,
//      new MaterialPageRoute(builder: (context) => new BeautifulImagePage()),
//    );
//  }
//
//
//  void _pushSaved(){
//    Navigator.of(context).push(
//      new MaterialPageRoute(
//        builder: (context) {
//          final tiles = _saved.map(
//                (pair) {
//              return new ListTile(
//                title: new Text(
//                  pair.asPascalCase,
//                  style: _biggerFont,
//                ),
//              );
//            },
//          );
//          final divided = ListTile
//              .divideTiles(
//            context: context,
//            tiles: tiles,
//          )
//              .toList();
//
//          return new Scaffold(
//            appBar: new AppBar(
//              title: new Text('Saved Suggestions'),
//            ),
//            body: new ListView(children: divided),
//          );
//
//        },
//      ),
//    );
//  }
//
//
//
//
//
//  Widget _buildRow(WordPair pair) {
//
//
//    final alreadySaved = _saved.contains(pair);
//    return new ListTile(
//      title: new Text(
//        pair.asPascalCase,
//        style: _biggerFont,
//      ),
//      trailing: new Icon(
//        alreadySaved ? Icons.favorite : Icons.favorite_border,
//        color: alreadySaved ? Colors.red : null,
//        size: 40.0,
//          semanticLabel:'和信金融',
//
//      ),
//      onTap: () {
//        setState(() {
//          if (alreadySaved) {
//            _saved.remove(pair);
//          } else {
//            _saved.add(pair);
//          }
//        });
//      },
//    );
//
//
////    return new ListTile(
////        title: new Container(
////          padding: EdgeInsets.all(20.0),
////          child: new Column(
////            children: [
////              Container(
////                height: 80.0,
////                child: new Text(
////                  pair.asCamelCase,
////                  style: const TextStyle(fontSize: 18.0),
////                ),
////                decoration: new BoxDecoration(
////                    borderRadius: new BorderRadius.circular(3.0),
////                    color: const Color(0xffe71d36),
////                    border: new Border.all(
////                      color: const Color(0xFF000000),
////                      width: 1.0,
////                      style: BorderStyle.solid,
////                    )),
////              ),
////            ],
////          ),
////          color: Color(0xffcccccc),
////        ),
////        subtitle: new Container(
////          child: new Text(
////            '12314',
////            style: new TextStyle(
////              color: const Color(0xffe71d36),
////            ),
////          ),
////          padding: EdgeInsets.only(
////            top: 10.0,
////          ),
////          color: Color(0xffffff36),
////        ));
//  }
//}

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:listview/BeautifulImagePage.dart';
import 'package:listview/DouBanPage.dart';
import 'package:listview/GridViewExtendPage.dart';
import 'package:listview/GridViewPage.dart';
import 'package:listview/GridViewPageTwoCasePage.dart';
import 'package:listview/WindowUtils.dart';
import 'package:listview/grid_list_demo.dart';

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _showText = <String>[
    'GridView组件Sliver GridDelegate With Fixed CrossAxis Count',
    '豆瓣ListView展示',
    'GridView.Extend组件',
    'GridView组件Sliver GridDelegate With Fixed Cross Axis Count',
    'GridView',
    'GridView',
    'GridView',
    'GridView',
    'GridView',
    'GridView',
    'GridView',
    'GridView'
  ];

  final _pages = <Map<String, Widget>>[
    {'page': new GridViewPage()},
    {'page': new DouBanPage()},
    {'page': new GridViewExtendPage()},
    {'page': new GridViewPageTwoCasePage()},
  ];

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text('测试'),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.list), onPressed: _pushBeautifulPage),
          new IconButton(
              icon: new Icon(Icons.live_help), onPressed: _pushOfficialPage)
        ],
      ),
      body: _buildListView(),
    );
  }

  ListView _buildListView() {
    return new ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return _buildListItem(context, index);
        },
        itemCount: _showText.length);
  }

  _buildListItem(BuildContext context, int index) {
    return new GestureDetector(
      onTap: () {
        _pushNextPage(index);
      },
      child: new Container(
          width: WindowUtils.getScreenWidth(),
          height: 64.0,
          padding: new EdgeInsets.all(0.0),
          color: new Color(0xFFe8e8e8),
          child: new Column(
            children: <Widget>[
              new Expanded(
                  child: new Container(
                width: WindowUtils.getScreenWidth(),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      _showText[index],
                      softWrap: true,
                      textAlign: TextAlign.left,
                      maxLines: 2,
                    )
                  ],
                ),
                padding: new EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
              )),
              new Padding(
                padding: new EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
                child: new Divider(
                  height: 1.0,
                  color: new Color(0xFF3296FA),
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          )),
    );
  }

  _pushOfficialPage() {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new GridListDemo()),
    );
  }

  _pushBeautifulPage() {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new BeautifulImagePage()),
    );
  }

  _pushNextPage(int index) {
    Widget targetPage = _pages[index]['page'];
    Navigator
        .of(context)
        .push(new MaterialPageRoute(builder: (context) => targetPage));
  }
}
