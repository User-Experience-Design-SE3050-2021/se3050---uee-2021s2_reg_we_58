import 'package:flutter/material.dart';
import 'package:train_srilanka/theme.dart';

import '../home_page.dart';
import 'login.dart';

class RegScreen extends StatelessWidget {
  const RegScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
          child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "CREATE ACCOUNT",
                  style: titleText,
                )
                // SizedBox(
                //   height: 20,
                // ),
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
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: textColorBlue),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
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
                Text("Already have an account?"),
                Text(" Log in",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    )),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0),
              height: MediaQuery.of(context).size.height / 10,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('Assets/footer.png'))),
            ),
          ],
        ),
      )),
    );
  }
}
