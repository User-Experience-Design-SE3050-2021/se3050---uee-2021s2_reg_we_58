import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:train_srilanka/widgets/custome_appbar.dart';
import 'package:train_srilanka/widgets/navbar.dart';

import '../theme.dart';
import 'UserAuth/register.dart';

class Homepage extends StatelessWidget {
  final ButtonStyle styleBtnSubmit = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20, backgroundColor: kPrimaryColor),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: CustomAppBar(),
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
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
                          border: InputBorder.none,
                          hintText: 'I want to go to'),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                ),
              ),
              Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  width: double.infinity,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    primary: kSecondaryColor,
                                    textStyle: const TextStyle(fontSize: 19),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 25.0)),
                                onPressed: () {},
                                icon: const Icon(Icons.compare_arrows_sharp),
                                label: const Text('MORE'))),
                        Container(width: 50),
                        Expanded(
                            flex: 1,
                            child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    primary: kSecondaryColor,
                                    textStyle: const TextStyle(fontSize: 19)),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_drop_down_sharp,
                                  size: 13.0,
                                ),
                                label: const Text('MORE')))
                      ])),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                width: double.infinity,
                child: ElevatedButton(
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: const Text('SEARCH')),
                  style: ElevatedButton.styleFrom(
                      primary: kPrimaryColor,
                      textStyle: const TextStyle(fontSize: 19)),
                  onPressed: () {
                    print('Pressed');
                  },
                ),
              )
            ])));
  }
}
