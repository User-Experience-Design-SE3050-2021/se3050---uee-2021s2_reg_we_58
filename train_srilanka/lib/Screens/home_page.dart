import 'package:flutter/material.dart';

import '../theme.dart';
import 'UserAuth/register.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: Text(
                'TRAINS SRI LANKA',
                style: NText,
              ),
              backgroundColor: Colors.white54,
              leading: IconButton(
                icon: Icon(Icons.menu),
                color: Colors.black,
                onPressed: () {},
                tooltip: 'Menu',
              )),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text("First Page"),
                )
              ],
            ),
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: [
                    Text(
                      "Search for Train Schedules",
                      style: NText,
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
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
                            border: InputBorder.none, hintText: 'Password'),
                        obscureText: true,
                        style: subTitle,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
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
                            border: InputBorder.none, hintText: 'Password'),
                        obscureText: true,
                        style: subTitle,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 300.0,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: textColorBlue),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Homepage()));
                    },
                    child: Text(
                      'SEEARCH',
                      style: textButton,
                    ),
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        child: Text("LogIn"),
                        color: kTextFieldColor,
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                      SizedBox(width: 80),
                      RaisedButton(
                        child: Text("SignUp"),
                        color: kTextFieldColor,
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 300.0,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: textColorBlue),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Homepage()));
                    },
                    child: Text(
                      'SEEARCH',
                      style: textButton,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
