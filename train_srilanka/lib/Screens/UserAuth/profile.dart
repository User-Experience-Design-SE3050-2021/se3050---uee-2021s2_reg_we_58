import 'package:flutter/material.dart';
import 'package:train_srilanka/Screens/UserAuth/login.dart';
import 'package:train_srilanka/theme.dart';

class Profile extends StatelessWidget {
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
          "Profile",
          style: TextStyle(fontSize: 30.0, color: textColorBlue),
        ),
        Text(
          "Not Available",
          style: TextStyle(fontSize: 15.0, color: textColorBlack),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          // padding: EdgeInsets.only(top: 100),
          height: 60,
          width: 200.0,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: textColorBlack),
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LogInScreen()));
            },
            child: Text(
              'LOGIN',
              style: textButton,
            ),
          ),
        ),
      ],
    )));
  }
}
