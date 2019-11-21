import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget{

  Icon iconButton;
  Color colorState;
  double leftButton = 30.0;
  double topButton = 20.0;
  bool sizeButton = true;

  ProfileButton(this.iconButton,this.colorState,this.leftButton,this.sizeButton);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: topButton,
        left: leftButton,
      ),
      child: FloatingActionButton(
        child: iconButton,
        mini: sizeButton,
        backgroundColor: colorState,
        onPressed: (){
          colorState = Colors.white54;
        },
      ),
    );
  }
}