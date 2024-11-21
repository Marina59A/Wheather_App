import 'package:flutter/material.dart';
import 'package:weatherapp/views/search_view.dart';
import 'package:weatherapp/widgets/noweather_widget.dart';
import 'package:weatherapp/widgets/search_item.dart';
import 'package:weatherapp/widgets/weather_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = "Home View";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Weather App",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SearchView.id);
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: weatherModel == null ? const NoWeather() : const WeatherItem(),
      ),
    );
  }
}
