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
      body: SafeArea(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 100,
            child: Card(
              color: textColorBlue,
              margin: EdgeInsets.all(15),
              elevation: 7.0,
              child: Center(
                child: Text(
                  "Search results for : ",
                  style: NButton,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Card(
            color: boxBlue2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  // tileColor: boxBlue2,
                  leading: Icon(Icons.train),
                  title: Text('Kankaseanthurai'),
                  // subtitle: Text('In : Colombo Fort '),
                  // trailing: Icon(Icons.more_vert),
                  // onTap: () => {
                  //   Navigator.of(context).pop(),
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => SearchResault()))
                  // },
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    Text(
                      '',
                      style: TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    ),
                    Text(
                      'Leave at : 3:45 AM',
                      style: TextStyle(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: <Widget>[
          //     TextButton(
          //       child: const Text('BUY TICKETS'),
          //       onPressed: () {/* ... */},
          //     ),
          //     const SizedBox(width: 8),
          //     TextButton(
          //       child: const Text('LISTEN'),
          //       onPressed: () {/* ... */},
          //     ),
          //     const SizedBox(width: 8),
          //   ],
          // ),
        ],
      )),
    );
  }
}
