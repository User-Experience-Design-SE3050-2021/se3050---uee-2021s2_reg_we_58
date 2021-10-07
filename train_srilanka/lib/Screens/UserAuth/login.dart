import 'package:flutter/material.dart';
import 'package:train_srilanka/theme.dart';
import 'package:train_srilanka/widgets/NavDrawer.dart';

import '../home_page.dart';
import 'register.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

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
              width: 400,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: textColorBlue),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegScreen()));
                },
                child: Text(
                  'SUBMIT',
                  style: textButton,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text("New here ?"),
                Text("Create a new account",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    )),
              ],
            ),
            // Flexible(
            //   flex: 4,
            //   child: Container(
            //     color: Colors.orangeAccent,
            //     // height: 20,
            //   ),
            // ),
            Container(
              height: 50,
              width: 300.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: textColorBlack),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                },
                child: Text(
                  'CONTINUE AS A GUEST',
                  style: textButton,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
              height: MediaQuery.of(context).size.height / 10,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('Assets/footer.png'))),
            ),
          ],
        )),
      ),
    );
  }
}
