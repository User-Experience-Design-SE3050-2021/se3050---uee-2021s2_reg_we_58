import 'package:flutter/material.dart';
import 'package:train_srilanka/Screens/train_shedule.dart';
import 'package:train_srilanka/theme.dart';
import 'package:train_srilanka/widgets/navbar.dart';

import 'UserAuth/register.dart';
import 'home_page.dart';

class Favourites extends StatelessWidget {
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
            margin: const EdgeInsets.all(5.0),
            child: Card(
              color: textColorBlue,
              margin: EdgeInsets.all(5),
              elevation: 7.0,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 0.0),
                ),
                Text(
                  "Favourites ",
                  style: FButton,
                ),
                Text(
                  "Anuradhapura Town -> Colombo Fort",
                  style: textButton,
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 10.0,
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
                        'Option 1',
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    ),
                    Icon(
                      Icons.star_rate,
                      // color: Colors.pink,
                      size: 25.0,
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
                    PopupMenuButton(
                      icon: Icon(Icons.more_vert),
                      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                        const PopupMenuItem(
                          child: ListTile(
                            leading: Icon(Icons.train),
                            title: Text('View Train Schedule'),
                            // onTap: () => {
                            //   Navigator.of(context).pop(),
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) => SearchResault()))
                            // },
                          ),
                        ),
                        const PopupMenuDivider(),
                        const PopupMenuItem(
                          child: ListTile(
                            leading: Icon(Icons.account_balance),
                            title: Text('View Station Schedule'),
                          ),
                        ),
                        // const PopupMenuItem(
                        //   child: Text('Item A'),
                        // ),
                        // const PopupMenuItem(child: Text('Item B')),
                      ],
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
                Container(
                  color: kZambeziColor,
                  height: 30,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                      Text(
                        'Option 3',
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
                  title: Text('Sri Devi (Kankasanthurai)'),
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
                ListTile(
                  leading: Icon(
                    Icons.transfer_within_a_station,
                    color: Colors.black,
                    size: 35.0,
                  ),
                  title: Text('Sri Devi (Kankasanthurai)'),
                  // subtitle: Text('In : Colombo Fort '),
                  // trailing: Icon(Icons.more_vert),
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
                      'In : A/Pura',
                      style: TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    ),
                    Text(
                      'Out: : Colombo Fort',
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
                ListTile(
                  leading: Icon(
                    Icons.train,
                    color: Colors.black,
                    size: 35.0,
                  ),
                  title: Text('Sri Devi (Kankasanthurai)'),
                  // subtitle: Text('In : Colombo Fort '),
                  // trailing: Icon(Icons.more_vert),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    ),
                    Icon(
                      Icons.star_rate,
                      // color: Colors.pink,
                      size: 25.0,
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
                    PopupMenuButton(
                      icon: Icon(Icons.more_vert),
                      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                        const PopupMenuItem(
                          child: ListTile(
                            leading: Icon(Icons.train),
                            title: Text('View Train Schedule'),
                            // onTap: () => {
                            //   Navigator.of(context).pop(),
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) => SearchResault()))
                            // },
                          ),
                        ),
                        const PopupMenuDivider(),
                        const PopupMenuItem(
                          child: ListTile(
                            leading: Icon(Icons.account_balance),
                            title: Text('View Station Schedule'),
                          ),
                        ),
                        // const PopupMenuItem(
                        //   child: Text('Item A'),
                        // ),
                        // const PopupMenuItem(child: Text('Item B')),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
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
                      vertical: 10.0, horizontal: 0.0),
                ),
                Text(
                  "Favourites ",
                  style: FButton,
                ),
                Text(
                  "Colombo Fort -> Anuradhapura Town",
                  style: textButton,
                ),
              ]),
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
                        'Option 1',
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
                  title: Text('Night Mail (Colombo Fort)'),
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
                      'Out: : A/Pura',
                      style: TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    ),
                    Icon(
                      Icons.star_rate,
                      // color: Colors.pink,
                      size: 25.0,
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
                    PopupMenuButton(
                      icon: Icon(Icons.more_vert),
                      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                        const PopupMenuItem(
                          child: ListTile(
                            leading: Icon(Icons.train),
                            title: Text('View Train Schedule'),
                            // onTap: () => {
                            //   Navigator.of(context).pop(),
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) => SearchResault()))
                            // },
                          ),
                        ),
                        const PopupMenuDivider(),
                        const PopupMenuItem(
                          child: ListTile(
                            leading: Icon(Icons.account_balance),
                            title: Text('View Station Schedule'),
                          ),
                        ),
                        // const PopupMenuItem(
                        //   child: Text('Item A'),
                        // ),
                        // const PopupMenuItem(child: Text('Item B')),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
