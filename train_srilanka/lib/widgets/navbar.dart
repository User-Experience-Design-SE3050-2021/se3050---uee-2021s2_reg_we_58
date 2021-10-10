import 'package:flutter/material.dart';
import 'package:train_srilanka/Screens/UserAuth/login.dart';
import 'package:train_srilanka/Screens/UserAuth/profile.dart';
import 'package:train_srilanka/Screens/UserAuth/register.dart';
import 'package:train_srilanka/Screens/alerts.dart';
import 'package:train_srilanka/Screens/favourite.dart';
import 'package:train_srilanka/Screens/home_page.dart';
import 'package:train_srilanka/Screens/search_history.dart';
import 'package:train_srilanka/Screens/search_resaults.dart';
import 'package:train_srilanka/Screens/settings.dart';
import 'package:train_srilanka/Screens/station_shedule.dart';
import 'package:train_srilanka/Screens/train_shedule.dart';
import 'package:train_srilanka/Screens/trip/trip_planner.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Rikas'),
            accountEmail: Text('rikasrkf@gmail.com'),
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Homepage()))
            },
          ),
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text('Alerts'),
            trailing: Icon(
              Icons.perm_device_information,
              color: Colors.red,
              size: 35.0,
            ),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Alerts()))
            },
          ),
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
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()))
            },
          ),
          ListTile(
            leading: Icon(Icons.star_rate),
            title: Text('Favourites'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Favourites()))
            },
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Trip Planner'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TripPlanner()))
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('History'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchHistory()))
            },
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
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()))
            },
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
