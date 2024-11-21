import 'package:flutter/material.dart';

class NoWeather extends StatelessWidget {
  const NoWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "   There is no weather 😔 start ",
          style: TextStyle(fontSize: 23),
        ),
        Text(
          " searching now 🔍",
          style: TextStyle(fontSize: 23),
        ),
      ],
    );
  }
}
