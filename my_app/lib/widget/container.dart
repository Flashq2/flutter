import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: 1000.0,
      height: 100.0,
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.amber),
      child: Center(child: Text("Center Text")),
    ));
  }
}
