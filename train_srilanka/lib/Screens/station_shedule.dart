import 'package:flutter/material.dart';
import 'package:train_srilanka/Screens/train_shedule.dart';
import 'package:train_srilanka/theme.dart';
import 'package:train_srilanka/widgets/navbar.dart';

import 'UserAuth/register.dart';
import 'home_page.dart';

class StationShedule extends StatelessWidget {
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
                'Jaffna',
                style: textButton,
              ),
              subtitle: Text(
                'Tell : +94 2222222222 ',
                style: FButton,
              ),
              trailing: Icon(
                Icons.phone,
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
                      'Shedule on Thursday Sep 2,2021',
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
                    Icons.account_balance,
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
            color: boxBlue2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  // tileColor: boxBlue2,
                  leading: Icon(
                    Icons.account_balance,
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
          Card(
            color: boxBlue2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  // tileColor: boxBlue2,
                  leading: Icon(
                    Icons.account_balance,
                    color: Colors.black,
                    size: 35.0,
                  ),
                  title: Text(
                    'Uttara Devi (Colombo Fort)',
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
            color: boxBlue2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  // tileColor: boxBlue2,
                  leading: Icon(
                    Icons.account_balance,
                    color: Colors.black,
                    size: 35.0,
                  ),
                  title: Text(
                    'Kilinochchi',
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
            color: boxBlue2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  // tileColor: boxBlue2,
                  leading: Icon(
                    Icons.account_balance,
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
            color: boxBlue2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  // tileColor: boxBlue2,
                  leading: Icon(
                    Icons.account_balance,
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
          Card(
            color: boxBlue2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  // tileColor: boxBlue2,
                  leading: Icon(
                    Icons.account_balance,
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
            color: boxBlue2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  // tileColor: boxBlue2,
                  leading: Icon(
                    Icons.account_balance,
                    color: Colors.black,
                    size: 35.0,
                  ),
                  title: Text(
                    'Uttara Devi (Colombo Fort)',
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
