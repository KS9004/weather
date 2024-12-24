import 'dart:convert';

import 'package:weather/models/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  final String _baseUrl = 'https://api.openweathermap.org/data/2.5/weather';
  final String _apiKey = "88b9df9a37356f1c57f4b2232e677cb1";

  Future<Weather> getWeather(String city) async {
    final response = await http.get(Uri.parse('$_baseUrl?q=$city&appid=$_apiKey&units=metric'));
    if (response.statusCode == 200){
      final data = json.decode(response.body);
      final Weather weather = Weather.fromJson(data);
      return Weather.fromJson(data);
    }else{
      throw Exception('Failed to load weather data');
    }
  }
}