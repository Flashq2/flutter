// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/widget/body.dart';
import 'package:my_app/widget/column_row.dart';
import 'package:my_app/widget/container.dart';
import 'package:my_app/widget/drawer.dart';
import 'package:my_app/widget/login.dart';
import 'package:my_app/widget/loklak_game.dart';
import 'package:my_app/widget/quies_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.blue,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              "Quize",
              style: TextStyle(color: Colors.amber),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          ),
          drawer: DrawerWidget(),
          body: QuizeWidget()),
    );
  }
}
