import 'package:flutter/material.dart';
import 'package:practice_test/CustomProduct.dart';

class ShoppingListTest extends StatefulWidget{
  ShoppingListTest({Key key, this.products}):super(key:key);
  final List <CustomProduct>products ;

  @override
  State<StatefulWidget> createState()=> new ShoppingListTestState();


}

class ShoppingListTestState extends State<ShoppingListTest> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('购物清单'),),
        body: new ListView(children: widget.products.map(
                (CustomProduct product) {
//                  widget.products.indexOf(product);
              return new Container(
                height: 44.0,
               child: new ListTile(
                 title: new Text(product.name),
               ),
              );
            }
        ).toList(),)
    );
  }

}