import 'dart:convert';

class WeatherData {
  String name;
  Map<String, String>? localNames;
  double lat;
  double lon;
  String country;
  String state;

  WeatherData({
    required this.name,
    this.localNames,
    required this.lat,
    required this.lon,
    required this.country,
    required this.state,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      name: json["name"],
      localNames: json["local_names"] != null
          ? Map<String, String>.from(json["local_names"]!)
          : null,
      lat: json["lat"]?.toDouble() ?? 0.0,
      lon: json["lon"]?.toDouble() ?? 0.0,
      country: json["country"] ?? "",
      state: json["state"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "local_names": localNames,
        "lat": lat,
        "lon": lon,
        "country": country,
        "state": state,
      };
}

List<WeatherData> weatherDataFromJson(String str) => List<WeatherData>.from(
    json.decode(str).map((x) => WeatherData.fromJson(x)));

String weatherDataToJson(List<WeatherData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
