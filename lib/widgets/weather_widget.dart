// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weatherapp/models/weather_model.dart';

class WeatherItem extends StatelessWidget {
  const WeatherItem({super.key, required this.weatherModel});
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            'updated at : ${weatherModel.date.hour}:${weatherModel.date.minute}',
            style: TextStyle(
              fontSize: 23,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Expanded(child: Image.network('https:${weatherModel.image!}')),
              Center(
                child: Text(
                  weatherModel.temp.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'maxTerm:${weatherModel.maxTemp.round()}',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'minTerm:${weatherModel.minTemp.round()}',
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
          Text(
            weatherModel.weatherCondation,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ],
      ),
    );
  }
}

DateTime stringToDateTime(String value) {
  return DateTime.parse(value);
}
