import 'package:flutter/material.dart';
import 'package:listview/MyScaffold.dart';
import 'package:listview/RandomWords.dart';

void main() => runApp(new MyApp());

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Welcome to Flutter',
//      home: new MyScaffold(),
//    );
//  }
//}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new RandomWords(),
        theme:new ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.cyan[600],
//          primarySwatch: const MaterialColor(
//            0xFFF44336,
//            const <int, Color>{
//              50: const Color(0xFFFFFFFF),
//              100: const Color(0xFFFFFFAE),
//              200: const Color(0xFFEFAAAA),
//              300: const Color(0xFFE57373),
//              400: const Color(0xFFEF5350),
//              500: const Color(0xFFF44336),
//              600: const Color(0xFFE53935),
//              700: const Color(0xFFD32F2F),
//              800: const Color(0xFFC62828),
//            },
//          ),
          dividerColor:Color(0xFFE71d36),
//          selectedRowColor:Color(0xFFE71d36),
//            canvasColor:Colors.cyan[600],
            accentColorBrightness:Brightness.dark,
        ),
    );
  }
}



