import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/floating_action_button_green.dart';

class ProfileCardPlace extends StatelessWidget{

  String name;
  String description;
  String theme;
  String location;
  String pathImage;

  ProfileCardPlace(this.name, this.description, this.theme, this.location, this.pathImage);

  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: 240,
      margin: EdgeInsets.only(
          left: 13.0,
          right: 13.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
              this.pathImage
          )
        ),
        borderRadius: BorderRadius.all(
            Radius.circular(20.0)
        ),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
    );

    final cardContent = Container(
      width: 290.0,
      height: 110.0,
      margin: EdgeInsets.only(
        left: 13.0,
        right: 13.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
            Radius.circular(20.0)
        ),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 7.0)
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 15.0,
              left: 15.0,
            ),
            child: Text(
              this.name,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Late',
                fontSize: 17.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 5.0,
              left: 15.0,
            ),
            child: Text(
              this.description,
              style: TextStyle(
                color: Colors.black38,
                fontFamily: 'Late',
                fontSize: 13.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 15.0,
            ),
            child: Text(
              this.theme,
              style: TextStyle(
                color: Colors.black38,
                fontFamily: 'Late',
                fontSize: 13.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 5.0,
              left: 15.0,
            ),
            child: Text(
              this.location,
              style: TextStyle(
                  color: Color.fromRGBO(210, 159, 104, 1),
                  fontFamily: 'Late',
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );

    return Stack(
      alignment: Alignment(0.0, 1.8),
      children: <Widget>[
        card,
        cardContent,
        Container(
          margin: EdgeInsets.only(
              left: 20.0
          ),
          alignment: Alignment(0.5, 1.5),
          child: FloatingActionButtonGreen(),
        )
      ],
    );;
  }

}