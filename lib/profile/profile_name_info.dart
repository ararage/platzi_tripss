import 'package:flutter/material.dart';

class ProfileNameInfo extends StatelessWidget{

  String name;
  String pathImage;
  String details;

  ProfileNameInfo(this.name, this.pathImage, this.details);

  @override
  Widget build(BuildContext context) {
    final userName = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0
      ),
      child: Text(
        this.name,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Late',
          fontSize: 17.0,
        ),
      ),
    );

    final userInfo = Container(
        margin: EdgeInsets.only(
            left: 20.0
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              this.details,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: 'Late',
                  fontSize: 13.0,
                  color: Colors.white30
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 5.0,
              ),
            )
          ],
        )
    );

    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
      ],
    );

    final profilePicture = Container(
      margin: EdgeInsets.only(
          right: 20.0
      ),
      width: 77,
      height: 77,
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white,
              width: 2.5
          ),
          shape: BoxShape.circle,
          color: Colors.white,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/img/avatar.jpg'),
          )
      ),
    );

    return Container(
      margin: EdgeInsets.only(
        top:10.0,
        left:30.0
      ),
      alignment: Alignment(-0.9, -0.8),
      child: Row(
        children: <Widget>[
          profilePicture,
          Container(
            height: 80.0,
            child: userDetail,
          )
        ],
      ),
    );
  }

}