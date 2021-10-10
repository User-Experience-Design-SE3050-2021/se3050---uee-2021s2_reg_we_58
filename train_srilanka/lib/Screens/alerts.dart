import 'package:flutter/material.dart';
import 'package:train_srilanka/Screens/train_shedule.dart';
import 'package:train_srilanka/theme.dart';
import 'package:train_srilanka/widgets/custome_appbar.dart';
import 'package:train_srilanka/widgets/navbar.dart';

import 'UserAuth/register.dart';
import 'home_page.dart';

class Alerts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 100,
            width: 480,
            margin: const EdgeInsets.all(5.0),
            child: Card(
              color: Colors.red,
              margin: EdgeInsets.all(5),
              elevation: 7.0,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 0.0),
                ),
                Text(
                  "Alerts",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Card(
            color: kZambeziColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    Text(
                      'Shedule on Thursday Oct 10,2021',
                      style: textButton,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Card(
            color: Colors.red[100],
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  // tileColor: boxBlue2,
                  leading: Icon(
                    Icons.train,
                    color: Colors.black,
                    size: 35.0,
                  ),
                  title: Text(
                    'Sri Devi (Colombo Fort)',
                    style: subTitle,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      'Arrive at : 4:00 AM',
                      style: TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      'Leave at : 4:23 AM',
                      style: TextStyle(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
          Card(
            color: Colors.red[100],
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  // tileColor: boxBlue2,
                  leading: Icon(
                    Icons.train,
                    color: Colors.black,
                    size: 35.0,
                  ),
                  title: Text(
                    'Mail (Colombo Fort)',
                    style: subTitle,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      'Arrive at : 4:00 AM',
                      style: TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      'Leave at : 4:23 AM',
                      style: TextStyle(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
