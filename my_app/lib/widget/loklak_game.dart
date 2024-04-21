// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

class LokLakGameWidget extends StatelessWidget {
  const LokLakGameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.amber)),
                    child: Image.asset('images/users.png'))),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.amber)),
                    child: Image.asset('images/users.png'))),
          ),
          Expanded(
            child: GestureDetector(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.amber)),
                      child: Image.asset('images/users.png'))),
            ),
          )
        ],
      ),
    ));
  }
}
