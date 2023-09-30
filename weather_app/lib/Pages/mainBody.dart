import 'package:flutter/material.dart';

class mainBody extends StatelessWidget {
  const mainBody({super.key});

  static String id = "MainBody";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "There is no weather 😢",
            style: TextStyle(fontSize: 32, color: Colors.black),
          ),
        ),
        Center(
          child: Text(
            "Search for a city now 🔍",
            style: TextStyle(color: Colors.black, fontSize: 32),
          ),
        ),
      ],
    );
  }
}
