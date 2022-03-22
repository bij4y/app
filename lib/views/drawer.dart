import 'dart:convert';

import 'package:flutter_tailor_app/api/api.dart';
import 'package:flutter_tailor_app/controller/usercontroller.dart';
import 'package:flutter_tailor_app/views/login.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future getuser() async {
      var response = await Api().getuser('user');
      var data = json.decode(response.body);
      return data;
    }

    // DarkMode darkMode = Provider.of<DarkMode>(context);
    return Drawer(
      child: ListView(
        children: [
          FutureBuilder(
            future: getuser(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return UserAccountsDrawerHeader(
                  accountName: Text(snapshot.data['name']),
                  accountEmail: Text(snapshot.data['email']),
                  currentAccountPicture: CircleAvatar(
                    child: Text(snapshot.data['name']
                        .toString()
                        .substring(0, 1)
                        .toUpperCase()),
                  ),
                );
              } else if (snapshot.hasError) {
                return Text("Error");
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'dashboard');
            },
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
          ),

          ListTile(
            title: Text('Shop by department'),
          ),
          const ListTile(
            title: Text('My Measurement'),
          ),
          // ListTile(
          //   title: const Text('Add Tailor'),
          //   onTap: () {
          //     Navigator.pushNamed(context, '/add_tailor');
          //   },
          // ),

          ListTile(
            title: const Text('Privacy'),
            onTap: () {
              Navigator.pushNamed(context, '/privacy');
            },
          ),
          const ListTile(
            title: Text('Terms of Conditions'),
          ),
          const ListTile(
            title: Text('Account information'),
          ),
          // ListTile(
          //   leading: darkMode.flag == false
          //       ? Icon(Icons.lightbulb_outline)
          //       : Icon(Icons.blur_off),
          //   title: Text("Enable Night Mode"),
          //   trailing: Switch(
          //       value: darkMode.flag,
          //       onChanged: (value) {
          //         darkMode.setFlag(value);
          //       }),
          // ),
          // InkWell(
          //   onTap: () {
          //     Navigator.pushNamed(context, 'editprofile');
          //   },
          //   child: ListTile(
          //     leading: Icon(Icons.edit),
          //     title: Text("Edit Profile"),
          //   ),
          // ),
          ListTile(
            onTap: () async {
              Map data = {};
              SharedPreferences preferences =
                  await SharedPreferences.getInstance();

              await Api().postData(data, 'logout').whenComplete(() {
                preferences.remove('token');

                Get.off(LoginScreen());
              });
            },
            leading: Icon(Icons.exit_to_app),
            title: Text("LogOut"),
          ),
        ],
      ),
    );
  }
}
