import 'package:flutter/material.dart';

class infoBody extends StatelessWidget {
  const infoBody({super.key});

  static String id = "infoBody";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Cairo",
          style: TextStyle(fontSize: 32),
        ),
        const Text(
          "Updated at: 20:20 ",
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/images/clear.png"),
            const Text(
              "17",
              style: TextStyle(fontSize: 32),
            ),
            Column(
              children: [
                const Text(
                  "MaxTemp: 17",
                  style: TextStyle(fontSize: 12),
                ),
                const Text(
                  "MinTemp: 11",
                  style: TextStyle(fontSize: 12),
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Sunny",
          style: TextStyle(fontSize: 32),
        ),
      ],
    );
  }
}
