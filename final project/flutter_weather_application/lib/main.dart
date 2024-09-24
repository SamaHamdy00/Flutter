import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_application/bloc/bloc/weather_bloc.dart';
import 'package:flutter_weather_application/data/determine_position.dart';
import 'package:flutter_weather_application/screens/weather_app.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
          future: determinePosition(),
          builder: (context, snap) {
            if (snap.hasData) {
              return BlocProvider<WeatherBloc>(
                create: (context) => WeatherBloc()
                  ..add(
                    FetchWeather(snap.data as Position),
                  ),
                child: const WeatherApp(),
              );
            } else {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          }),
    );
  }
}
