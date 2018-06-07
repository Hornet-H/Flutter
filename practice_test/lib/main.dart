import 'package:flutter/material.dart';
import 'package:practice_test/mainRoot.dart';
import 'package:practice_test/product.dart';
import 'package:practice_test/ShoppingList.dart';

//class MyApp extends StatelessWidget {
//
//  final List  _kProducts = <Product>[
//    new Product(name: '鸡蛋'),
//    new Product(name: '面粉'),
//    new Product(name: '巧克力脆片'),
//  ];
///*  MyApp(){
//    _kProducts.add( new Product(name: '鸡蛋'));
//    _kProducts.add( new Product(name: '面粉'));
//    _kProducts.add( new Product(name: '巧克力脆片'));
//  }*/
//  @override
//  Widget build(BuildContext context) {
//    return new Container(child:new ShoppingList(products: _kProducts));
//  }
//}
//
//void main() {
//  runApp(
//    new MaterialApp(
//      title: 'Flutter教程',
//      home: new MyApp(),
//    ),
//  );
//}

void main(){
  runApp(new MaterialApp(
      color:Colors.white,
      theme:new ThemeData(brightness:Brightness.light),
      home:new MyApp()
  ));

}



