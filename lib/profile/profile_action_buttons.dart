import 'package:flutter/material.dart';
import 'profile_button.dart';

class ProfileActionButtons extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ProfileActionButtons();
  }

}

class _ProfileActionButtons extends State<ProfileActionButtons>{
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(-0.9, -0.60),
      child: Row(
        children: <Widget>[
          ProfileButton(Icon(Icons.turned_in_not, color: Colors.indigo,),Colors.white, 20.0, true),
          ProfileButton(Icon(Icons.lock_outline, color: Colors.indigo,),Colors.white54, 30.0, true),
          ProfileButton(Icon(Icons.add, color: Colors.indigo,size: 40.0,),Colors.white, 30.0, false),
          ProfileButton(Icon(Icons.mail_outline, color: Colors.indigo,),Colors.white54, 30.0, true),
          ProfileButton(Icon(Icons.person, color: Colors.indigo,),Colors.white54, 30.0, true),
        ],
      ),
    );
  }

}