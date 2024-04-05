import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_api/model/five_day_weather.dart';
import 'package:weather_api/service/api_key.dart';

class WeatherForecastService {
  static const String baseUrl = 'https://api.openweathermap.org/data/2.5';
  static const String apiKey = ApiConstants.openWeatherMapApiKey;

  Future<FiveDayWeather> fetchWeatherForecast(double latitude, double longitude) async {
    final url = '$baseUrl/forecast?lat=$latitude&lon=$longitude&appid=$apiKey';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return FiveDayWeather.fromJson(jsonData);
    } else {
      throw Exception('Failed to fetch weather forecast');
    }
  }
}
