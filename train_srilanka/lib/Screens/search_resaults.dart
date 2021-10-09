import 'package:flutter/material.dart';
import 'package:train_srilanka/theme.dart';
import 'package:train_srilanka/widgets/navbar.dart';

import 'UserAuth/register.dart';
import 'home_page.dart';

class SearchResault extends StatelessWidget {
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
              margin: EdgeInsets.all(18),
              elevation: 7.0,
              child: Center(
                child: Text(
                  "Search results for : ",
                  style: NtextButton,
                ),
              ),
            ),
          ),

          SizedBox(
            height: 10.0,
          ),
          // Card(
          //   child: Column(
          //     mainAxisSize: MainAxisSize.min,
          //     children: <Widget>[
          //       const ListTile(
          //         leading: Icon(Icons.train),
          //         title: Text('AC - Intercity (Kankasanthurai)'),
          //         subtitle: Text('Card Widget Example #4'),
          //         trailing: Icon(Icons.more_vert),
          //       ),
          //     ],
          //   ),
          // ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    Text(
                      'Option 1',
                      style: TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    ),
                    Text(
                      '6h 6m',
                      style: TextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 85.0),
                    ),
                    Icon(
                      Icons.share,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ],
                ),
                ListTile(
                  leading: Icon(Icons.train),
                  title: Text('Yal Devi (Kankasanthurai)'),
                  // subtitle: Text('In : Colombo Fort '),
                  trailing: Icon(Icons.more_vert),
                  onTap: () => {
                    Navigator.of(context).pop(),
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchResault()))
                  },
                ),
                PopupMenuButton(
                  icon: Icon(Icons.more_vert),
                  itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                    const PopupMenuItem(
                      child: ListTile(
                        leading: Icon(Icons.train),
                        title: Text('View Train Schedule'),
                      ),
                    ),
                    const PopupMenuDivider(),
                    const PopupMenuItem(
                      child: ListTile(
                        leading: Icon(Icons.account_balance),
                        title: Text('View Station Schedule'),
                      ),
                    ),
                    // const PopupMenuItem(child: Text('Item A')),
                    // const PopupMenuItem(child: Text('Item B')),
                  ],
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
                  ],
                ),
                SizedBox(
                  height: 10.0,
                )
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
