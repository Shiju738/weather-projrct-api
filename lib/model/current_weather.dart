

class CurrentWeather {
  final Coord? coord;
  final List<Weather>? weather;
  final String ?base;
  final Main? main;
  final int ?visibility;
  final Wind ?wind;
  final Rain ?rain;
  final Clouds? clouds;
  final int? dt;
  final Sys ?sys;
  final int? timezone;
  final int? id;
  final String? name;
  final int ?cod;

  CurrentWeather({
     this.coord,
     this.weather,
     this.base,
     this.main,
     this.visibility,
     this.wind,
     this.rain,
     this.clouds,
     this.dt,
     this.sys,
     this.timezone,
     this.id,
     this.name,
     this.cod,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    return CurrentWeather(
      coord: Coord.fromJson(json['coord']),
      weather: (json['weather'] as List).map((e) => Weather.fromJson(e)).toList(),
      base: json['base'],
      main: Main.fromJson(json['main']),
      visibility: json['visibility'],
      wind: Wind.fromJson(json['wind']),
      rain: Rain.fromJson(json['rain'] ?? {}),
      clouds: Clouds.fromJson(json['clouds']),
      dt: json['dt'],
      sys: Sys.fromJson(json['sys']),
      timezone: json['timezone'],
      id: json['id'],
      name: json['name'],
      cod: json['cod'],
    );
  }
}

class Coord {
  final double lon;
  final double lat;

  Coord({
    required this.lon,
    required this.lat,
  });

  factory Coord.fromJson(Map<String, dynamic> json) {
    return Coord(
      lon: json['lon'],
      lat: json['lat'],
    );
  }
}

class Weather {
  final int id;
  final String main;
  final String description;
  final String icon;

  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      id: json['id'],
      main: json['main'],
      description: json['description'],
      icon: json['icon'],
    );
  }
}

class Main {
  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int humidity;

  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
  });

  factory Main.fromJson(Map<String, dynamic> json) {
    return Main(
      temp: json['temp'],
      feelsLike: json['feels_like'],
      tempMin: json['temp_min'],
      tempMax: json['temp_max'],
      pressure: json['pressure'],
      humidity: json['humidity'],
    );
  }
}

class Wind {
  final double speed;
  final int deg;

  Wind({
    required this.speed,
    required this.deg,
  });

  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(
      speed: json['speed'],
      deg: json['deg'],
    );
  }
}

class Rain {
  final double? oneHourVolume;
  final double? threeHourVolume;

  Rain({
    this.oneHourVolume,
    this.threeHourVolume,
  });

  factory Rain.fromJson(Map<String, dynamic> json) {
    return Rain(
      oneHourVolume: json['1h']?.toDouble(),
      threeHourVolume: json['3h']?.toDouble(),
    );
  }
}

class Clouds {
  final int all;

  Clouds({
    required this.all,
  });

  factory Clouds.fromJson(Map<String, dynamic> json) {
    return Clouds(
      all: json['all'],
    );
  }
}

class Sys {
  final int type;
  final int id;
  final String country;
  final int sunrise;
  final int sunset;

  Sys({
    required this.type,
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  factory Sys.fromJson(Map<String, dynamic> json) {
    return Sys(
      type: json['type'],
      id: json['id'],
      country: json['country'],
      sunrise: json['sunrise'],
      sunset: json['sunset'],
    );
  }
}
