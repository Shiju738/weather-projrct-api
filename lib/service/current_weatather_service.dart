import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_api/model/current_weather.dart';
import 'package:weather_api/service/api_key.dart'; 

class CurrentWeatherService {
  Future<CurrentWeather> fetchCurrentWeather(double lat, double lon) async {
    final String apiKey = ApiConstants.openWeatherMapApiKey;
    final url = 'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return CurrentWeather.fromJson(jsonData);
    } else {
      throw Exception('Failed to load current weather data');
    }
  }
}
