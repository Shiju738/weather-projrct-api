// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:weather_api/service/weather_service.dart';
import 'package:weather_api/view/home_page.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController placeController = TextEditingController();

  final WeatherService weatherService = WeatherService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: TextField(
                    controller: placeController,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      hintText: 'Search a city',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    try {
                      final weatherData = await weatherService.fetchWeatherData(
                          placeController.text, );
                      print(weatherData.lat);
                      print(weatherData.lon);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              HomePage(weatherData: weatherData),
                        ),
                      );
                    } catch (e) {
                      print("Error fetching weather data: $e");
                    }
                  },
                  child: Text('Search'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
