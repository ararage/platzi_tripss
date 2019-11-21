import 'package:flutter/material.dart';
import 'profile_gradient.dart';
import 'profile_name_info.dart';

class ProfileHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProfileGradient("Profile"),
        ProfileNameInfo("Mia Khalifa", "assets/img/avatar.jpg", "Very cool"),
      ],
    );
  }
}