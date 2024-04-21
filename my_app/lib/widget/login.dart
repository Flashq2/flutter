// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage('images/users.png'),
          ),
          SizedBox(height: 20.0),
          Text(
            'Hello ! Puthea Pok',
            style: TextStyle(color: Colors.amber, fontSize: 20.0),
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(color: Colors.black, fontSize: 16.0),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
            ),
            child: Row(children: <Widget>[
              Icon(
                Icons.paste_sharp,
                color: Colors.amber,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '************',
                style: TextStyle(color: Colors.white),
              )
            ]),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
            ),
            child: Row(children: <Widget>[
              Icon(
                Icons.verified_user,
                color: Colors.amber,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'pokputhea2@gmail.com',
                style: TextStyle(color: Colors.white),
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
            width: MediaQuery.of(context).size.width,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                      width: 100,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ]),
          )
        ],
      ),
    ));
  }
}
