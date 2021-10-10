import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:train_srilanka/Screens/search_resaults.dart';
import 'package:train_srilanka/widgets/custome_appbar.dart';
import 'package:train_srilanka/widgets/navbar.dart';

import '../theme.dart';
import 'UserAuth/register.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ButtonStyle styleBtnSubmit = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20, backgroundColor: kPrimaryColor),
  );

  bool viewVisible = false;

  void handleWidgets() {
    if (viewVisible) {
      setState(() {
        viewVisible = false;
      });
    } else {
      setState(() {
        viewVisible = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: CustomAppBar(),
        body: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: <
                    Widget>[
          SizedBox(height: 30.0),
          Text(
            'Search for Train Schedules',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
            textAlign: TextAlign.left,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'I am at'),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'I want to go to'),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              width: double.infinity,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                primary: kSecondaryColor,
                                textStyle: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                                padding: EdgeInsets.symmetric(vertical: 9.0)),
                            onPressed: () {},
                            icon: Icon(
                              Icons.compare_arrows_sharp,
                              size: 26.0,
                            ),
                            label: const Text('REVERSE'))),
                    Container(width: 50),
                    Expanded(
                        flex: 1,
                        child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                primary: viewVisible
                                    ? kZambeziColor
                                    : kSecondaryColor,
                                textStyle: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                                padding: EdgeInsets.symmetric(vertical: 9.0)),
                            onPressed: handleWidgets,
                            icon: viewVisible
                                ? Icon(
                                    Icons.arrow_drop_up_sharp,
                                    size: 30.0,
                                  )
                                : Icon(
                                    Icons.arrow_drop_down_sharp,
                                    size: 30.0,
                                  ),
                            label: viewVisible
                                ? const Text('LESS')
                                : const Text('MORE')))
                  ])),
          Visibility(
            maintainSize: false,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisible,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Date'),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Time'),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            width: double.infinity,
            child: ElevatedButton(
              child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: const Text('SEARCH')),
              style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchResault()));
              },
            ),
          )
        ])));
  }
}
