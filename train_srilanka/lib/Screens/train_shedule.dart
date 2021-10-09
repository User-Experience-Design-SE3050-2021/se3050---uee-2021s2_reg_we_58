import 'package:flutter/material.dart';
import 'package:train_srilanka/theme.dart';
import 'package:train_srilanka/widgets/navbar.dart';

import 'UserAuth/register.dart';
import 'home_page.dart';

class TrainShedule extends StatelessWidget {
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
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 100,
            width: 480,
            margin: EdgeInsets.all(5),
            color: textColorBlue,
            child: ListTile(
              title: Text(
                'Yal Devi (Kankasanthurai)',
                style: textButton,
              ),
              subtitle: Text(
                'Available : Daily                                                                                         Classes : 1st, 2nd & 3rd ',
                style: FButton,
              ),
              trailing: Icon(
                Icons.train,
                color: Colors.white,
                size: 35.0,
              ),
              onTap: () => {
                Navigator.of(context).pop(),
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TrainShedule())),
              },
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
                      'The train will stop at',
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
                    'Kankaseanthurai',
                    style: subTitle,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 140.0),
                    ),
                    Text(
                      'Leave at : 3:45 AM',
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
                    'Jaffna',
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
                      'Leave at : 4:05 AM',
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
                    'Kodimam',
                    style: subTitle,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      'Arrive at : 4:22 AM',
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
                    'Vavuniya',
                    style: subTitle,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      'Arrive at : 4:51 AM',
                      style: TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      'Leave at : 4:53 AM',
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
                    'Medawachchiya',
                    style: subTitle,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      'Arrive at : 5:49 AM',
                      style: TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      'Leave at : 5:50 AM',
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
                    'Anuradhapura',
                    style: subTitle,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      'Arrive at : 6:44 AM',
                      style: TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      'Leave at : 6:50 AM',
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
