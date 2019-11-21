import 'package:flutter/material.dart';
import 'profile_header.dart';
import 'profile_action_buttons.dart';
import 'profile_card_place_list.dart';

class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProfileHeader(),
        ProfileActionButtons(),
        ProfileCardPlaceList()
      ],
    );
  }
}