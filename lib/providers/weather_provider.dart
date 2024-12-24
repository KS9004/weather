import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/services/weather_service.dart';

part 'weather_provider.g.dart';

@riverpod
WeatherService weatherService(Ref ref) => WeatherService();

@riverpod
Future<Weather> weatherData(Ref ref, String city) async {
  final weatherService = ref.read(weatherServiceProvider);
  final weather = await weatherService.getWeather(city);
  print(weather);
  return weather;
}

