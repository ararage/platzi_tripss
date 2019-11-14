import 'package:flutter/material.dart';

class Person extends StatelessWidget{

  final ImageProvider photo;
  final String name;
  final int experience;
  final bool read;

  const Person({this.photo, this.name, this.experience, this.read});

  @override
  Widget build(BuildContext context) {
    final String expTxt = experience < 0
        ? 'No definida'
        : '$experience año '+ (experience > 2 ? 's':'');
    final Color readColor = read ? Colors.grey.shade700 : Colors.white;
    final Color readColorBg = read ? Colors.grey.shade300 : Colors.red.shade700;

    final photoContainer = Container(
      margin: EdgeInsets.only(
        top:20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          image: photo,
          fit: BoxFit.cover
        )
      ),
    );

    return Row(
      children: <Widget>[
        photoContainer,
        Container(
          margin: EdgeInsets.only(
            left: 20.0,
            top: 5.0
          ),
          width: 160.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Experiencia: $expTxt'
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 20.0,
            top: 25.0
          ),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: readColor
          ),
          child: Icon(
            Icons.mail,
            color: readColor
          ),
        )
      ],
    );
  }
}