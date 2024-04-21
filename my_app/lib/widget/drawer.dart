// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color.fromARGB(137, 244, 67, 54),
                  const Color.fromARGB(181, 33, 149, 243)
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.5, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              )),
              currentAccountPicture:
                  CircleAvatar(backgroundImage: AssetImage('images/items.png')),
              accountName: Text(
                'Pok Puthea',
                style: TextStyle(color: Colors.amber, fontSize: 18),
              ),
              accountEmail: Text(
                'pokputhea2@gmail.com',
                style: TextStyle(color: Colors.amber[100], fontSize: 14),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
              ],
              otherAccountsPicturesSize: Size(10.0, 10.0),
            ),
            ListTile(
              title: Text("User Account"),
              leading: Icon(
                Icons.man,
                color: Colors.amber,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text("My Work"),
              leading: Icon(
                Icons.book,
                color: Colors.amber,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text("Setting"),
              leading: Icon(
                Icons.settings,
                color: Colors.amber,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text("Account"),
              leading: Icon(
                Icons.account_box,
                color: Colors.amber,
              ),
              onTap: () {},
            )
          ],
        ));
  }
}
