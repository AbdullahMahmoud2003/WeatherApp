import 'package:flutter/material.dart';
import 'package:weather_app/Pages/mainBody.dart';
import 'package:weather_app/Pages/searchBody.dart';

class mainPage extends StatelessWidget {
  const mainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, searchBody.id);
            },
            icon: Icon(Icons.search),
            color: Colors.white,
          )
        ],
        backgroundColor: Colors.blue,
      ),
      body: mainBody(),
    );
  }
}
