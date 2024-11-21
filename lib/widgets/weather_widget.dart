import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WeatherItem extends StatelessWidget {
  const WeatherItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Alexandria',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            'updated at : 23:46',
            style: TextStyle(
              fontSize: 23,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Expanded(child: Image.asset('assets/images/cloudy.png')),
              Center(
                child: Text(
                  '17',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'maxTerm:17',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'minTerm:10',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Light Rain',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
