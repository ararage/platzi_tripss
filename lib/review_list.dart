import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('assets/img/avatar.jpg', "Mia Khalifa", "1 review 5 photos", "Very cool place"),
        Review('assets/img/avatar2.jpg', "Mia Marin", "1 review 5 photos", "Nice place"),
        Review('assets/img/avatar3.jpg', "Ladi", "1 review 5 photos", "Good place")
      ],
    );
  }

}