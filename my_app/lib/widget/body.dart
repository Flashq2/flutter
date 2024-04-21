import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        image: AssetImage('images/items.png'),
        width: 100.0,
        height: 100.0,
      ),
    );
  }
}
