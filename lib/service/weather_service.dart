import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/weather_data.dart';
import '../service/api_key.dart';

class WeatherService {
  Future<WeatherData> fetchWeatherData(
    String  cityname,
  ) async {
    const apiKey = ApiConstants.openWeatherMapApiKey;
    final url =
        'https://api.openweathermap.org/data/2.5/weather?q=$cityname&appid=$apiKey';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        return WeatherData.fromJson(jsonData);
      } else {
        throw Exception('Failed to load weather data: ${response.statusCode}');
      }
    } catch (e) {
      // Handle any exceptions that occur during the HTTP request
      throw Exception('Failed to load weather data: $e');
    }
  }
}
