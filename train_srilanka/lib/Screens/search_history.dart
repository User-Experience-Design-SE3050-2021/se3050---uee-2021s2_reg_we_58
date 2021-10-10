import 'package:flutter/material.dart';
import 'package:train_srilanka/Screens/train_shedule.dart';
import 'package:train_srilanka/theme.dart';
import 'package:train_srilanka/widgets/navbar.dart';

import 'UserAuth/register.dart';
import 'home_page.dart';

class SearchHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('TRAINS SRI LANKA'),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          // SizedBox(
          //   height: 5.0,
          // ),
          SizedBox(
            height: 10.0,
          ),
          Card(
            margin: EdgeInsets.all(10),
            color: textColorBlue,
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
                      'Search History',
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
          Card(
            margin: EdgeInsets.all(10),
            color: boxBlue2,
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
                    'Anuradhapura Town  ->  Colombo Fort',
                    style: subTitle,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      'From Tue 03/08/2021',
                      style: TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    ),
                    Text(
                      '04:57 PM',
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
            margin: EdgeInsets.all(10),
            color: boxBlue2,
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
                    'Colombo Fort  -> Anuradhapura Town  ',
                    style: subTitle,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      'From Tue 03/08/2021',
                      style: TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    ),
                    Text(
                      '03:27 PM',
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
            margin: EdgeInsets.all(10),
            color: boxBlue2,
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
                    'Colombo Fort  -> Matara  ',
                    style: subTitle,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      'From Sun 01/08/2021',
                      style: TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    ),
                    Text(
                      '03:21 PM',
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
            margin: EdgeInsets.all(10),
            color: boxBlue2,
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
                    'Colombo Fort -> Badulla ',
                    style: subTitle,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      'From Tue 03/09/2021    ',
                      style: TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    ),
                    Text(
                      '04:57 PM',
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
