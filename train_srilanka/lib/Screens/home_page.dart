import 'package:flutter/material.dart';
import 'package:train_srilanka/widgets/NavDrawer.dart';

import '../theme.dart';
import 'UserAuth/register.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('TRAINS SRI LANKA'),
      ),
      body: Center(
        child: Text('Side Menu Tutorial'),
      ),
    );
  }
}
