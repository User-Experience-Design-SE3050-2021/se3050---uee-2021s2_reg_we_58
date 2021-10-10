import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:train_srilanka/widgets/custome_appbar.dart';
import 'package:train_srilanka/widgets/navbar.dart';
import 'package:train_srilanka/widgets/adminNavBar.dart';
import 'package:intl/intl.dart';
import '../../theme.dart';

class AdminHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedTime = DateFormat('kk:mm:ss').format(now);
    String formattedDate = DateFormat('EEE d MMM').format(now);
    String dropDownValue = 'Select Station Platform';
    var items = [
      'Select Station Platform',
      'Platform 01',
      'Platform 02',
      'Platform 03',
      'Platform 04',
      'Platform 05'
    ];

    return Scaffold(
        drawer: adminNavDrawer(),
        appBar: CustomAppBar(),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    'Station Master',
                    style: TextStyle(fontSize: 12, color: textColorBlue),
                  ),
                  Expanded(child: Container()),
                  Text(
                    'Station',
                    style: TextStyle(fontSize: 12, color: textColorBlue),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'Henry Stain',
                    style: TextStyle(
                        fontSize: 12,
                        color: textColorBlack,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Container()),
                  Text(
                    'Kandy',
                    style: TextStyle(
                        fontSize: 12,
                        color: textColorBlack,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    formattedTime,
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: textColorBlack),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    formattedDate,
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: textColorBlue),
                  ),
                ],
              ),
              Row(
                children: [
                  DropdownButton(
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    value: dropDownValue,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(value: items, child: Text(items));
                    }).toList(),
                    onChanged: (String? newValue) {
                      dropDownValue = newValue!;
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Railway Station',
                    style: TextStyle(fontSize: 12, color: textColorBlack),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'Details Summary',
                    style: TextStyle(
                        fontSize: 15,
                        color: textColorBlue,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DataTable(columns: [
                      DataColumn(label: Text('Time')),
                      DataColumn(label: Text('Train')),
                      DataColumn(label: Text('PLTF')),
                      DataColumn(label: Text('D')),
                      DataColumn(label: Text('L')),
                      DataColumn(label: Text('C')),
                    ], rows: [
                      DataRow(cells: [
                        DataCell(Text('03.00')),
                        DataCell(Text('Udarata Manike')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('')),
                        DataCell(Text('')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('08.00')),
                        DataCell(Text('Podi Manike')),
                        DataCell(Text('1')),
                        DataCell(Text('1')),
                        DataCell(Text('')),
                        DataCell(Text('')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('13.50')),
                        DataCell(Text('Express')),
                        DataCell(Text('1')),
                        DataCell(Text('')),
                        DataCell(Text('')),
                        DataCell(Text('')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('15.25')),
                        DataCell(Text('Local Train')),
                        DataCell(Text('1')),
                        DataCell(Text('0')),
                        DataCell(Text('')),
                        DataCell(Text('')),
                      ]),
                    ])
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    'Alerts',
                    style: TextStyle(
                        fontSize: 15,
                        color: alertRed,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                  height: 80.0,
                  child: ListView(
                    children: const <Widget>[
                      Card(
                          child: ListTile(
                        leading: Icon(
                          Icons.train,
                          color: Colors.black,
                          size: 35.0,
                        ),
                        title: Text('02-10.2021'),
                        subtitle: Text('Express 10 Min Delay'),
                        trailing: Icon(Icons.more_vert),
                      ))
                    ],
                  )),
              SizedBox(
                  height: 80.0,
                  child: ListView(
                    children: const <Widget>[
                      Card(
                          child: ListTile(
                        leading: Icon(
                          Icons.train,
                          color: Colors.black,
                          size: 35.0,
                        ),
                        title: Text('03-11-2021'),
                        subtitle: Text('Podi Manike 20 Min Delay'),
                        trailing: Icon(Icons.more_vert),
                      ))
                    ],
                  )),
              SizedBox(
                  height: 80.0,
                  child: ListView(
                    children: const <Widget>[
                      Card(
                          child: ListTile(
                        leading: Icon(
                          Icons.train,
                          color: Colors.black,
                          size: 35.0,
                        ),
                        title: Text('02-10.2021'),
                        subtitle: Text('Udarata Manike 20 Min Delay'),
                        trailing: Icon(Icons.more_vert),
                      ))
                    ],
                  )),
            ])));
  }
}
