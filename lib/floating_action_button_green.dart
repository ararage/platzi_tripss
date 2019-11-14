import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  bool favorite = false;

  Icon favIcon = Icon(Icons.favorite_border);

  void onPressedFav(){
    setState(() {
      favorite = !favorite;
      if(favorite)
        favIcon = Icon(
            Icons.favorite
        );
      else
        favIcon = Icon(
          Icons.favorite_border
        );
    });

    final contextScaffold = Scaffold.of(context);
    contextScaffold.removeCurrentSnackBar();
    contextScaffold.showSnackBar(
      SnackBar(
        content: favorite ? Text("Agregada a Favoritos!"):
        Text("Quitada de Favoritos!"),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: favIcon,
      onPressed: onPressedFav,
    );
  }

}