import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weatherapp/views/home_view.dart';
import 'package:weatherapp/views/search_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: BlocBuilder<GetWeatherCubit, GetWeatherState>(
        builder: (context, state) {
          final condition = BlocProvider.of<GetWeatherCubit>(context)
              .weatherModel
              ?.weatherCondation;
          return MaterialApp(
              key: ValueKey(condition),
              title: 'Weather App',
              theme: ThemeData(
                useMaterial3: false,
                primarySwatch: getThemeColor(
                  condition,
                ),
              ),
              debugShowCheckedModeBanner: false,
              routes: {
                HomeView.id: (context) => const HomeView(),
                SearchView.id: (context) => const SearchView(),
              },
              initialRoute: HomeView.id);
        },
      ),
    );
  }
}

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition.toLowerCase()) {
    case "sunny":
      return Colors.amber;
    case "clear":
      return Colors.deepOrange;
    case "partly cloudy":
      return Colors.blueGrey;
    case "cloudy":
    case "fog":
      return Colors.grey;
    case "overcast":
      return Colors.blue;
    case "mist":
    case "blowing snow":
    case "freezing fog":
      return Colors.lightBlue;
    case "patchy rain possible":
      return Colors.indigo;
    case "patchy snow possible":
    case "patchy sleet possible":
    case "blizzard":
      return Colors.cyan;
    case "patchy freezing drizzle possible":
      return Colors.lightBlue;
    case "thundery outbreaks possible":
      return Colors.purple;
    case "patchy light drizzle":
      return Colors.teal;
    case "light drizzle":
      return Colors.lightGreen;
    default:
      return Colors.blue;
  }
}
