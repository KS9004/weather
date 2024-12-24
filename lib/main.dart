import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/core/theme.dart';
import 'package:weather/views/home_view.dart';

void main() {
  runApp(ProviderScope(child: WeatherAPP(),));
}

class WeatherAPP extends StatelessWidget {
  const WeatherAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: appTheme,
      home: HomeView(),
    );
  }
}