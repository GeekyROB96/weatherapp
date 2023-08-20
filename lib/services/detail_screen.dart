import 'package:flutter/material.dart';
import 'package:clima/utilities/reusablecard.dart';

class DetailScreen extends StatelessWidget {
  final Map<String, dynamic> weatherData;

  DetailScreen({required this.weatherData});

  String getFormattedTime(int timestamp) {
    var time = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    var formattedTime = '${time.hour}:${time.minute.toString().padLeft(2, '0')}';
    return formattedTime;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Extra Weather Details'),
      ),
      body: ListView(
        children: <Widget>[
          ReusableCard(
            colour: Color(0xFF1D1E33), // Change this color if needed
            cardChild: Text('☁️ Pressure: ${weatherData['main']['pressure']} hPa'),
          ),
          ReusableCard(
            colour: Color(0xFF1D1E33), // Change this color if needed
            cardChild: Text('🌡️ Max Temp: ${weatherData['main']['temp_max']}°C'),
          ),
          ReusableCard(
            colour: Color(0xFF1D1E33), // Change this color if needed
            cardChild: Text('📉 Min Temp: ${weatherData['main']['temp_min']}°C'),
          ),
          ReusableCard(
            colour: Color(0xFF1D1E33), // Change this color if needed
            cardChild: Text('🌬️ Wind Speed: ${weatherData['wind']['speed']} m/s'),
          ),
          ReusableCard(
            colour: Color(0xFF1D1E33), // Change this color if needed
            cardChild: Text('🌫️ Visibility: ${weatherData['visibility']} meters'),
          ),
          ReusableCard(
            colour: Color(0xFF1D1E33), // Change this color if needed
            cardChild: Column(
              children: [
                Text('🌅 Sunrise: ${getFormattedTime(weatherData['sys']['sunrise'])}'),
                Text('🌇 Sunset: ${getFormattedTime(weatherData['sys']['sunset'])}'),
              ],
            ),
          ),
          ReusableCard(
            colour: Color(0xFF1D1E33), // Change this color if needed
            cardChild: Text('💧 Humidity: ${weatherData['main']['humidity']}%'),
          ),
        ],
      ),
    );
  }
}
