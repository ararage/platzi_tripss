import 'package:flutter/material.dart';
import 'profile_card_place.dart';

class ProfileCardPlaceList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(
        top: 270,
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ProfileCardPlace("CDMX", "Ciudad de México", "Visita de Ciudad", "123", "assets/img/cdmx.jpg"),
          Container(margin: EdgeInsets.all(42.0),),
          ProfileCardPlace("GDL", "Guadalajara", "Visita de Ciudad", "123", "assets/img/gdl.jpg"),
          Container(margin: EdgeInsets.all(42.0),),
          ProfileCardPlace("Oaxaca", "Oaxacao", "Visita de Ciudad", "123", "assets/img/oaxaca.jpg"),
          Container(margin: EdgeInsets.all(42.0),),
        ],
      ),
    );
  }
}