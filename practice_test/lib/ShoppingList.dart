import 'package:flutter/material.dart';
import 'package:practice_test/product.dart';
import 'ShoppingListItem.dart';

class ShoppingList extends StatefulWidget {
  ShoppingList({Key key, this.products}) : super(key: key);
  final List<Product> products;
  @override
  _ShoppingListState createState() => new _ShoppingListState();
}
class _ShoppingListState extends State<ShoppingList> {
  Set<Product> _shoppingCart = new Set<Product>();
  void _handleCartChanged(Product product, bool inCart) {
    setState(
            () {
          if (inCart)
            _shoppingCart.add(product);
          else
            _shoppingCart.remove(product);
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('购物清单'),
      ),
      body: new ListView(
        children: widget.products.map(
                (Product product) {
              return new ShoppingListItem(
                product: product,
                inCart: _shoppingCart.contains(product),
                onCartChanged: _handleCartChanged,
              );
            }
        ).toList(),
      ),
    );
  }
}

