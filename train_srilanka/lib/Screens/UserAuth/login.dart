import 'package:flutter/material.dart';
import 'package:train_srilanka/theme.dart';

void main() {
  runApp(LogInScreen());
}

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'LOGIN',
              style: titleText,
            ),
            SizedBox(height: 30.0),
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
                        border: InputBorder.none, hintText: 'Email'),
                    style: subTitle,
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
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: textColorBlue),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'SUBMIT',
                  style: textButton,
                ),
              ),
            ),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blueGrey[900],
                  ),
                  title: Text('rikasrkf@gmail.com',
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                      )),
                )),
            Container(
              height: 50,
              width: 300.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: textColorBlack),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'CONTINUE AS A GUEST',
                  style: textButton,
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
