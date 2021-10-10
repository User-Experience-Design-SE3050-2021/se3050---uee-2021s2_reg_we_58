import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:train_srilanka/widgets/custome_appbar.dart';
import 'package:train_srilanka/widgets/navbar.dart';
import 'package:train_srilanka/widgets/adminNavBar.dart';
import 'package:train_srilanka/Screens/Admin/adminAddAlert.dart';
import 'package:intl/intl.dart';
import '../../theme.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:date_field/date_field.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AdminAlert extends StatelessWidget {
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
                    'Alerts',
                    style: TextStyle(
                        fontSize: 20,
                        color: textColorBlue,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Container()),
                  TextButton.icon(
                    style: TextButton.styleFrom(
                      backgroundColor: textColorBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onPressed: () => {
                      Navigator.of(context).pop(),
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdminAddAlert()))
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Add Alert',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    _dateTime == null ? '' : _dateTime.toString(),
                    style: TextStyle(color: textColorBlue, fontSize: 13),
                  )
                ],
              ),
              Row(
                children: [
                  TextButton.icon(
                    style: TextButton.styleFrom(
                      backgroundColor: textColorBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onPressed: () => {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2001),
                              lastDate: DateTime(2222))
                          .then((date) => null)
                    },
                    icon: Icon(
                      Icons.calendar_today_rounded,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Select a Date',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: 80.0,
                  child: ListView(
                    children: <Widget>[
                      Card(
                          child: ListTile(
                        leading: Icon(
                          Icons.train,
                          color: Colors.black,
                          size: 35.0,
                        ),
                        title: Text('02-10.2021'),
                        subtitle: Text('Express 10 Min Delay'),
                        trailing: PopupMenuButton(itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              child: Text('Delete'),
                              value: 'delete',
                              onTap: showToastDelete,
                            ),
                            PopupMenuItem(
                              child: Text('Edit'),
                              value: 'Edit',
                              onTap: showToastUpdate,
                            ),
                          ];
                        }),
                      ))
                    ],
                  )),
              SizedBox(
                  height: 80.0,
                  child: ListView(
                    children: <Widget>[
                      Card(
                          child: ListTile(
                        leading: Icon(
                          Icons.train,
                          color: Colors.black,
                          size: 35.0,
                        ),
                        title: Text('03-11-2021'),
                        subtitle: Text('Podi Manike 20 Min Delay'),
                        trailing: PopupMenuButton(itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              child: Text('Delete'),
                              value: 'delete',
                              onTap: showToastDelete,
                            ),
                            PopupMenuItem(
                              child: Text('Edit'),
                              value: 'Edit',
                              onTap: showToastUpdate,
                            ),
                          ];
                        }),
                      ))
                    ],
                  )),
              SizedBox(
                  height: 80.0,
                  child: ListView(
                    children: <Widget>[
                      Card(
                          child: ListTile(
                        leading: Icon(
                          Icons.train,
                          color: Colors.black,
                          size: 35.0,
                        ),
                        title: Text('02-10.2021'),
                        subtitle: Text('Udarata Manike 20 Min Delay'),
                        trailing: PopupMenuButton(itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              child: Text('Delete'),
                              value: 'delete',
                              onTap: showToastDelete,
                            ),
                            PopupMenuItem(
                              child: Text('Edit'),
                              value: 'Edit',
                              onTap: showToastUpdate,
                            ),
                          ];
                        }),
                      ))
                    ],
                  )),
              SizedBox(
                  height: 80.0,
                  child: ListView(
                    children: <Widget>[
                      Card(
                          child: ListTile(
                        leading: Icon(
                          Icons.train,
                          color: Colors.black,
                          size: 35.0,
                        ),
                        title: Text('03-11-2021'),
                        subtitle: Text('Podi Manike 20 Min Delay'),
                        trailing: PopupMenuButton(itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              child: Text('Delete'),
                              value: 'delete',
                              onTap: showToastDelete,
                            ),
                            PopupMenuItem(
                              child: Text('Edit'),
                              value: 'Edit',
                              onTap: showToastUpdate,
                            ),
                          ];
                        }),
                      ))
                    ],
                  )),
              SizedBox(
                  height: 80.0,
                  child: ListView(
                    children: <Widget>[
                      Card(
                          child: ListTile(
                        leading: Icon(
                          Icons.train,
                          color: Colors.black,
                          size: 35.0,
                        ),
                        title: Text('03-11-2021'),
                        subtitle: Text('Podi Manike 20 Min Delay'),
                        trailing: PopupMenuButton(itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              child: Text('Delete'),
                              value: 'delete',
                              onTap: showToastDelete,
                            ),
                            PopupMenuItem(
                              child: Text('Edit'),
                              value: 'Edit',
                              onTap: showToastUpdate,
                            ),
                          ];
                        }),
                      ))
                    ],
                  )),
              SizedBox(
                  height: 80.0,
                  child: ListView(
                    children: <Widget>[
                      Card(
                          child: ListTile(
                        leading: Icon(
                          Icons.train,
                          color: Colors.black,
                          size: 35.0,
                        ),
                        title: Text('03-11-2021'),
                        subtitle: Text('Podi Manike 20 Min Delay'),
                        trailing: PopupMenuButton(itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              child: Text('Delete'),
                              value: 'delete',
                              onTap: showToastDelete,
                            ),
                            PopupMenuItem(
                              child: Text('Edit'),
                              value: 'Edit',
                              onTap: showToastUpdate,
                            ),
                          ];
                        }),
                      ))
                    ],
                  )),
              SizedBox(
                  height: 80.0,
                  child: ListView(
                    children: <Widget>[
                      Card(
                          child: ListTile(
                        leading: Icon(
                          Icons.train,
                          color: Colors.black,
                          size: 35.0,
                        ),
                        title: Text('03-11-2021'),
                        subtitle: Text('Podi Manike 20 Min Delay'),
                        trailing: PopupMenuButton(itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              child: Text('Delete'),
                              value: 'delete',
                              onTap: showToastDelete,
                            ),
                            PopupMenuItem(
                              child: Text('Edit'),
                              value: 'Edit',
                              onTap: showToastUpdate,
                            ),
                          ];
                        }),
                      ))
                    ],
                  )),
            ])));
  }
}

void showToastDelete() => Fluttertoast.showToast(
    msg: "Alert Delete Successfull",
    fontSize: 18,
    backgroundColor: Colors.redAccent);

void showToastUpdate() => Fluttertoast.showToast(
    msg: "Alert Update Successfull",
    fontSize: 18,
    backgroundColor: Colors.blue);

void cancelToast() => Fluttertoast.cancel();
