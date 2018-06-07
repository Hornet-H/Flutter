import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_test/CustomProduct.dart';
import 'package:practice_test/ShoppingList_test.dart';


class MyApp extends StatelessWidget {

  final List <CustomProduct> _products = <CustomProduct>[
    new CustomProduct(name: '鸡蛋'),
    new CustomProduct(name: '面粉'),
    new CustomProduct(name: '巧克力脆片'),
  ];


  @override
  Widget build(BuildContext context) {

    return new Container(
        child: new ShoppingListTest(products:_products),
    );
  }
}