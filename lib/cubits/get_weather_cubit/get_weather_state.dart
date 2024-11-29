part of 'get_weather_cubit.dart';

@immutable
sealed class GetWeatherState {}

final class NoWeatherState extends GetWeatherState {}

final class WeatherLoadingState extends GetWeatherState {
  final WeatherModel weatherModel;

  WeatherLoadingState({required this.weatherModel});
}

final class WeatherFailureState extends GetWeatherState {
  final String errorMessage;

  WeatherFailureState({required this.errorMessage});
}
