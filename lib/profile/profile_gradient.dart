import 'package:flutter/material.dart';

class ProfileGradient extends StatelessWidget{

  String title;

  ProfileGradient(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF584CD1)
            ],
            begin: FractionalOffset(0.2,0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
        )
      ),
      child: Row(
        children: <Widget>[
          // FIRST TEXT
          Expanded(
            child: Container(
              child: Text(
                this.title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontFamily: "Lato",
                    fontSize: 30.0
                ),
              ),
              alignment: Alignment(-0.9, -0.75),
            ),
          ),
          // ENGINE ICON
          Container(
            margin: EdgeInsets.only(
                right: 20.0,
                top:40.0
            ),
            child: Icon(
                Icons.settings,
                color: Color.fromRGBO(255, 255, 255, 0.5),
                size: 17.0
            ),
            alignment: Alignment(-0.9, -0.90),
          ),
        ],
      ),
    );
  }

}