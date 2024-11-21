import 'package:flutter/material.dart';
import 'package:weatherapp/views/home_view.dart';
import 'package:weatherapp/views/search_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.id:(context) => const HomeView(),
        SearchView.id:(context) =>  const SearchView(),
      },
      initialRoute:HomeView.id
    );
  }
}
