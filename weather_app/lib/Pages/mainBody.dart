import 'package:flutter/material.dart';

class mainBody extends StatelessWidget {
  const mainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "There is no weather",
          style: TextStyle(fontSize: 32, color: Colors.black),
        ),
        Text(
          "Search for a city now ",
          style: TextStyle(color: Colors.black, fontSize: 32),
        ),
      ],
    );
  }
}
