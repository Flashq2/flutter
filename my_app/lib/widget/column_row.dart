import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(2),
          width: MediaQuery.of(context).size.width / 3.1,
          height: 100.0,
          color: Colors.amber,
        ),
        Container(
          margin: EdgeInsets.all(2),
          width: MediaQuery.of(context).size.width / 3.1,
          height: 100.0,
          color: Colors.amber,
        ),
        Container(
          margin: EdgeInsets.all(2),
          width: MediaQuery.of(context).size.width / 3.1,
          height: 100.0,
          color: Colors.amber,
        ),
      ],
    ));
  }
}
