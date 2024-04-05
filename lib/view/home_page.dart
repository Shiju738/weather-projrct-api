import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_api/model/weather_data.dart';
import 'package:weather_api/view/search_page.dart'; // Import the intl package for date formatting

class HomePage extends StatelessWidget {
  final WeatherData weatherData;

  const HomePage({Key? key, required this.weatherData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get today's date
    String formattedDate = DateFormat.yMMMd().format(
      DateTime.now(),
    );

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: const Icon(Icons.location_on),
        title: Text(weatherData.name),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchPage(),
                ),
              );
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(17),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Today $formattedDate', // Display today's date
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '21/c',
                            style: TextStyle(fontSize: 40),
                          ),
                          const Text(
                            '21/26',
                            style: TextStyle(fontSize: 20),
                          ),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.refresh))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Feel like'),
                              Row(
                                children: [
                                  Icon(Icons
                                      .ac_unit), // Replace Icons.ac_unit with the desired icon
                                  Text('Temperature'),
                                ],
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Feel like'),
                              Row(
                                children: [
                                  Icon(Icons
                                      .ac_unit), // Replace Icons.ac_unit with the desired icon
                                  Text('Temperature'),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Wind Speed'),
                          Row(
                            children: [
                              Icon(Icons.wind_power_outlined),
                              Text('8.5 k/h')
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8), // Add space between the containers
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Wind Speed'),
                          Row(
                            children: [
                              Icon(Icons.wind_power_outlined),
                              Text('8.5 k/h')
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_month),
                          SizedBox(
                            width: 5,
                          ),
                          Text('5 day Brought_cast')
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.sunny),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Tommorow'),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Sunny'),
                          Spacer(),
                          Text('24 °C/27 °C')
                        ],
                      ),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.sunny),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Wednesday'),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Sunny'),
                          Spacer(),
                          Text('24 °C/27 °C')
                        ],
                      ),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.sunny),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Thursday'),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Sunny'),
                          Spacer(),
                          Text('24 °C/27 °C')
                        ],
                      ),
                      Divider()
                    ],
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

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:weather_api/model/current_weather.dart';
// import 'package:weather_api/model/weather_data.dart';
// import 'package:weather_api/service/current_weatather_service.dart';
// import 'package:weather_api/view/search_page.dart'; // Import CurrentWeatherService

// class HomePage extends StatelessWidget {
//   final WeatherData weatherData;

//   const HomePage({Key? key, required this.weatherData}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // Get today's date
//     String formattedDate = DateFormat.yMMMd().format(DateTime.now());

//     return Scaffold(
//       backgroundColor: Colors.grey,
//       appBar: AppBar(
//         backgroundColor: Colors.grey,
//         leading: const Icon(Icons.location_on),
//         title: Text(weatherData.name),
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => SearchPage(),
//                 ),
//               );
//             },
//             icon: const Icon(Icons.search),
//           )
//         ],
//       ),
//       body: FutureBuilder<CurrentWeather>(
//         future: CurrentWeatherService().fetchCurrentWeather(
//           weatherData.lat,
//           weatherData.lon,
//         ),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             print(weatherData.lat);
//             print("lat${weatherData.lat}");
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           } else if (snapshot.hasError) {
//             return Center(
//               child: Text('Failed to load current weather data'),
//             );
//           } else {
//             // Weather data fetched successfully
//             final currentWeather = snapshot.data!;
//             return SafeArea(
//               child: Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Column(
//                   children: [
//                     Container(
//                       width: double.infinity,
//                       decoration: const BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(17),
//                         ),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Today $formattedDate', // Display today's date
//                               style: const TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 20,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   '${currentWeather.main?.temp ?? 0}°C',
//                                   style: const TextStyle(fontSize: 40),
//                                 ),
//                                 Text(
//                                   '${currentWeather.main?.tempMin ?? 0}/${currentWeather.main?.tempMax ?? 0}',
//                                   style: const TextStyle(fontSize: 20),
//                                 ),
//                                 IconButton(
//                                   onPressed: () {
//                                     // Refresh action
//                                   },
//                                   icon: const Icon(Icons.refresh),
//                                 )
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
