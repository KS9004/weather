import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/providers/weather_provider.dart';
import 'package:weather/widgets/error_widget.dart';
import 'package:weather/widgets/weather_card.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  String city = "london";

  @override
  Widget build(BuildContext context) {
    final weather = ref.watch(weatherDataProvider(city));
    return Scaffold(
        appBar: AppBar(
          title: Text('Weather App'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SearchBar(
                leading: Icon(Icons.search),
                hintText: 'Search City',
                onSubmitted: (value) {
                  setState(() {
                    city = value;
                  });
                },
              ),
              SizedBox(height: 16),
              Expanded(
                child: weather.when(
                    data: (weather) => WeatherCard(weather: weather),
                    error: (err, stack) => CustomErrorWidget(
                      message:'Failed to load weather data',
                      onRetry:() => ref.refresh(weatherDataProvider(city)),
                    ),
                    loading: () => Center(
                          child: CircularProgressIndicator(),
                        )),
              ),
            ],
          ),
        ));
  }
}
