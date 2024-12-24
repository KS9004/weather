import 'package:intl/intl.dart';

class Weather {
  final String cityName;
  final double temperature;
  final String description;
  final String weatherIcon;
  final int humidity;
  final double windSpeed;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int visibility;
  final int clouds;
  final int sunrise;
  final int sunset;
  final String country;
  final String date;
  final String time;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.description,
    required this.weatherIcon,
    required this.humidity,
    required this.windSpeed,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.visibility,
    required this.clouds,
    required this.sunrise,
    required this.sunset,
    required this.country,
    required this.date,
    required this.time,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temperature: json['main']['temp'].toDouble(),
      description: json['weather'][0]['description'],
      weatherIcon: json['weather'][0]['icon'],
      humidity: json['main']['humidity'],
      windSpeed: json['wind']['speed'].toDouble(),
      feelsLike: json['main']['feels_like'].toDouble(),
      tempMin: json['main']['temp_min'].toDouble(),
      tempMax: json['main']['temp_max'].toDouble(),
      pressure: json['main']['pressure'],
      visibility: json['visibility'],
      clouds: json['clouds']['all'],
      sunrise: json['sys']['sunrise'],
      sunset: json['sys']['sunset'],
      country: json['sys']['country'],
      date: DateFormat('yyyy-MM-dd').format(DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000)),
      time: DateFormat('HH:mm:ss').format(DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000)),
    );
  }
}
