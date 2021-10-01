import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  LandingPage({required this.title});

  final String title;

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
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
          "TRAINS",
          style: TextStyle(fontSize: 30.0, color: textColorBlue),
        ),
        Text(
          "SRI LANKA",
          style: TextStyle(fontSize: 15.0, color: textColorBlack),
        ),
      ],
    )));
  }
}
