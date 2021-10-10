import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:train_srilanka/Screens/train_shedule.dart';
import 'package:train_srilanka/Screens/trip/edit_trip.dart';
import 'package:train_srilanka/Screens/trip/trip_planner.dart';
import 'package:train_srilanka/theme.dart';
import 'package:train_srilanka/widgets/custome_appbar.dart';
import 'package:train_srilanka/widgets/navbar.dart';

import '../UserAuth/register.dart';
import '../home_page.dart';

class ViewTrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: NavDrawer(),
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
              color: textColorBlue,
              margin: EdgeInsets.all(5),
              elevation: 7.0,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 0.0),
                ),
                Text(
                  "Trip Planner",
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
                      'Trip 01',
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
            margin: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Row(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  child: Text(
                    'From : Anuradhapura Town',
                    style: subTitle,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),

          Card(
            color: boxBlue2,
            margin: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Row(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  child: Text(
                    'To : Colombo Fort',
                    style: subTitle,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          Card(
            color: boxBlue2,
            margin: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Row(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  child: Text(
                    'Date : 12/12/2020',
                    style: subTitle,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          Card(
            color: boxBlue2,
            margin: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Row(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  child: Text(
                    'Time : 11.16 PM',
                    style: subTitle,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          Card(
            color: boxBlue2,
            margin: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Row(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  child: Text(
                    'Option :',
                    style: subTitle,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          Card(
            color: boxBlue2,
            margin: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  color: kZambeziColor,
                  height: 30,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                      Text(
                        'Option 2',
                        style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      ),
                      Text(
                        '6h 6m',
                        style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 85.0),
                      ),
                      Icon(
                        Icons.share,
                        color: kWhiteColor,
                        size: 24.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.train,
                    color: Colors.black,
                    size: 35.0,
                  ),
                  title: Text('Yal Devi (Kankasanthurai)'),
                  // subtitle: Text('In : Colombo Fort '),
                  trailing: Icon(Icons.more_vert),
                  onTap: () => {
                    Navigator.of(context).pop(),
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TrainShedule())),
                  },
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      'In : Colombo Fort',
                      style: TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    ),
                    Text(
                      'Out: : Jaffna',
                      style: TextStyle(),
                    ),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      'At : 06.15 PM',
                      style: TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      'At : 02.35 AM',
                      style: TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),

          //ADD BUTTON
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // padding: EdgeInsets.only(top: 100),
                height: 50,
                width: 120.0,
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 35.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.red),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TripPlanner()));
                  },
                  child: Text(
                    'Delete',
                    style: textButton,
                  ),
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 100),
                height: 50,
                width: 120.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 60.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: textColorBlue),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditTrip()));
                  },
                  child: Text(
                    'Update',
                    style: textButton,
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
