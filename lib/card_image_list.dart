import 'package:flutter/material.dart';
import 'card.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/arco.jpg"),
          CardImage("assets/img/slp.jpg"),
          CardImage("assets/img/chichen.jpg"),
          CardImage("assets/img/balandra.jpg"),
          CardImage("assets/img/cdmx.jpg"),
          CardImage("assets/img/gdl.jpg"),
          CardImage("assets/img/oaxaca.jpg"),
          CardImage("assets/img/tajin.jpg")
        ],
      ),
    );
  }

}