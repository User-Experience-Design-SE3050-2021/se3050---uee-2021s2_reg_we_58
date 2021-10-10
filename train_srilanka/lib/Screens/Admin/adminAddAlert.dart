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
import 'package:fluttertoast/fluttertoast.dart';

class AdminAddAlert extends StatefulWidget {
  const AdminAddAlert({Key? key}) : super(key: key);

  @override
  State<AdminAddAlert> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<AdminAddAlert> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
              Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Alert Code',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Alert Code';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Alert Type',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Alert Type';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Alert Name',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Alert Name';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Alert Description',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Alert Description';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Publish Date',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Select Publish Date';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Time',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Time';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Train',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Train';
                          }
                          return null;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Validate will return true if the form is valid, or false if
                            // the form is invalid.
                            if (_formKey.currentState!.validate()) {
                              showToastSuccess();
                            } else {
                              showToastError();
                            }
                          },
                          child: const Text('Add Alert'),
                        ),
                      ),
                    ],
                  ))
            ])));
  }
}

void showToastSuccess() => Fluttertoast.showToast(
    msg: "Alert Succesfully Submited",
    fontSize: 18,
    backgroundColor: Colors.greenAccent);

void showToastError() => Fluttertoast.showToast(
    msg: "Alert Submission Error", fontSize: 18, backgroundColor: Colors.red);

void cancelToast() => Fluttertoast.cancel();
