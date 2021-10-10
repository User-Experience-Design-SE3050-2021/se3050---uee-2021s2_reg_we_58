import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  final textColorBlue = Color(0xff0a8bc2);
  final textColorBlack = Color(0xff000000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image(image: AssetImage('Assets/Train.png')),
        Text(
          "Settings",
          style: TextStyle(fontSize: 30.0, color: textColorBlue),
        ),
        Text(
          "Not Available",
          style: TextStyle(fontSize: 15.0, color: textColorBlack),
        ),
      ],
    )));
  }
}
