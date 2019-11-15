import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class PlatziTripsCupertino extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.indigo),
                title: Text("")
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.indigo),
                title: Text("")
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.indigo),
                title: Text("")
              ),
            ]
        ),
      )
    )
  }

}