import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:train_srilanka/widgets/custome_appbar.dart';
import 'package:train_srilanka/widgets/navbar.dart';

import '../theme.dart';
import 'UserAuth/register.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: CustomAppBar(),
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
