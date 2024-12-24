import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather/core/colors.dart';
import 'package:weather/models/weather_model.dart';

class WeatherCard extends StatelessWidget {
  final Weather weather;
  const WeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.cardBackground,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              weather.cityName,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold, fontSize: 50),
            ),
            SizedBox(width: 16),
            Column(
              children: [
                Image.network(
                  "https://openweathermap.org/img/wn/${weather.weatherIcon}@4x.png",
                ),
                Text(
                  '${weather.temperature}',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  weather.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Wind',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      '${weather.windSpeed} m/s',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Humidity',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      '${weather.humidity}%',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
