// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/services/weather_service.dart';

part 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(NoWeatherState());

  WeatherModel? weatherModel;

  Future<void> getWeather({required String cityName}) async {
    emit(NoWeatherState());
    try {
      final fetchedWeather =
          await WeatherService(Dio()).getCurrentWeather(cityName: cityName);

      weatherModel = fetchedWeather;

      emit(WeatherLoadingState(weatherModel: weatherModel!));
    } catch (e) {
      emit(WeatherFailureState(
        errorMessage: e.toString(),
      ));
    }
  }
}
