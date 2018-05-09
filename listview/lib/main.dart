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
    );
  }
}



