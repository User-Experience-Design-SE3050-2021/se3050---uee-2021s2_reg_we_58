import 'package:flutter/material.dart';
import 'package:train_srilanka/Screens/UserAuth/login.dart';
import 'package:train_srilanka/Screens/UserAuth/register.dart';
import 'package:train_srilanka/Screens/search_resaults.dart';
import 'package:train_srilanka/Screens/station_shedule.dart';
import 'package:train_srilanka/Screens/train_shedule.dart';
import 'package:train_srilanka/Screens/Admin/adminAlerts.dart';

class adminNavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Henry Stain'),
            accountEmail: Text('henryStain@gmail.com'),
            currentAccountPicture: CircleAvatar(
                // child: ClipOval(
                //   child: Image.network(
                //     'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                //     fit: BoxFit.cover,
                //     width: 90,
                //     height: 90,
                //   ),
                // ),
                ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.perm_identity),
            title: Text('Home'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchResault()))
            },
          ),
          ListTile(
              leading: Icon(Icons.account_balance),
              title: Text('Alerts'),
              onTap: () => {
                    Navigator.of(context).pop(),
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AdminAlert()))
                  }),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Trains'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TrainShedule()))
            },
          ),
          ListTile(
            leading: Icon(Icons.transfer_within_a_station),
            title: Text('Stations'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StationShedule()))
            },
          ),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: 30.0,
          ),
          Divider(
            color: Colors.grey,
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LogInScreen()))
            },
          ),
        ],
      ),
    );
  }
}
