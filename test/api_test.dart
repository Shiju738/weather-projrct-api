import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  try {
    final cityName = 'New York'; // Change this to any city you want to check
    final apiKey = 'b39c7464ab56df782ab4652f7da5fd99'; // Your API key

    final url = 'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print('Weather data for $cityName:');
      print(jsonData);
    } else {
      print('Failed to load weather data: ${response.statusCode}');
    }
  } catch (e) {
    print('Failed to load weather data: $e');
  }
}
