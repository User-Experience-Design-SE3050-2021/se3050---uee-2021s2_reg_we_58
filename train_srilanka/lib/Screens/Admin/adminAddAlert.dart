import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:train_srilanka/widgets/custome_appbar.dart';
import 'package:train_srilanka/widgets/navbar.dart';
import 'package:train_srilanka/widgets/adminNavBar.dart';
import 'package:intl/intl.dart';
import '../../theme.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:date_field/date_field.dart';

class AdminAddAlert extends StatelessWidget {
  DateTime? _dateTime;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String dropDownValue = 'Select Date';
    var items = [
      'Select Date',
      'Platform 01',
      'Platform 02',
      'Platform 03',
      'Platform 04',
      'Platform 05'
    ];

    return Scaffold(
        drawer: adminNavDrawer(),
        appBar: AppBar(
          title: Text('TRAINS SRI LANKA'),
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    'Add Alert',
                    style: TextStyle(
                        fontSize: 20,
                        color: textColorBlue,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ])));
  }
}
