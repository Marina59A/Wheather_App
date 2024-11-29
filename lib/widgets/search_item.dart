// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: TextField(
          onSubmitted: (value) async {
            var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
            getWeatherCubit.getWeather(cityName: value);
            Navigator.pop(context);
          },
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
            hintText: 'Enter City Name',
            hintStyle: TextStyle(color: Colors.grey),
            labelText: 'search',
            suffixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
