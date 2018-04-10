
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

 class CustomCard extends StatelessWidget {
  CustomCard({@required this.index,  @required this.onPress});

  final int index;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return new Card(
        child: new Column(
          children: <Widget>[
            new Text('Card $index'),
            new FlatButton(
              child: const Text('Press'),
              onPressed: (){
                if(this.onPress()){
                  this.onPress(index);
                }
              },
            ),
          ],
        )
    );
  }
}