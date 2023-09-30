import 'package:flutter/material.dart';
import 'package:weather_app/Pages/infoBody.dart';
import 'package:weather_app/Pages/mainBody.dart';
import 'package:weather_app/Pages/mainPage.dart';
import 'package:weather_app/Pages/searchBody.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        mainBody.id: (context) => mainBody(),
        searchBody.id: (context) => searchBody(),
        infoBody.id: (context) => infoBody(),
      },
      debugShowCheckedModeBanner: false,
      home: mainPage(),
    );
  }
}
