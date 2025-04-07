import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather_app/additional_info_item.dart';
import 'package:weather_app/hourly_forecast_item.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            '300K',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16),
                          Icon(Icons.cloud, size: 64),
                          SizedBox(height: 16),
                          Text('Rain', style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // weather forecast cards
            const Text(
              'Weather Forecast',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecastItem(
                    time: "09:00",
                    temperature: '320',
                    icon: Icons.cloud,
                  ),
                  HourlyForecastItem(
                    time: "10:00",
                    temperature: '324',
                    icon: Icons.sunny,
                  ),
                  HourlyForecastItem(
                    time: "11:00",
                    temperature: '323',
                    icon: Icons.grain,
                  ),
                  HourlyForecastItem(
                    time: "12:00",
                    temperature: '319',
                    icon: Icons.flash_on,
                  ),
                  HourlyForecastItem(
                    time: "01:00",
                    temperature: '320',
                    icon: Icons.ac_unit,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            //additional information
            const Text(
              'Additional Information',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditonalInfoItem(
                  icon: Icons.water_drop,
                  label: "Humidity",
                  value: '91',
                ),
                AdditonalInfoItem(
                  icon: Icons.air,
                  label: "Wind Speed",
                  value: '91',
                ),
                AdditonalInfoItem(
                  icon: Icons.device_thermostat,
                  label: "Pressure",
                  value: '91',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
