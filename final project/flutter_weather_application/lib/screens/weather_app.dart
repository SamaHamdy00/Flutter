import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_application/bloc/bloc/weather_bloc.dart';
import 'package:flutter_weather_application/data/get_weather_icon.dart';
import 'package:flutter_weather_application/widgets/my_column.dart';
import 'package:flutter_weather_application/widgets/my_sizebox.dart';
import 'package:weather/weather.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.1 * kToolbarHeight, 40, 20),
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            if (state is WeatherSuccess) {
              return SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(3, -0.3),
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.deepPurple),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-3, -0.3),
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.deepPurple),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, -1.2),
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration:
                            const BoxDecoration(color: Color(0xFFFFAB40)),
                      ),
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                      child: Container(
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "📍 : ${state.weather.country}",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        mySizedBox(height: 10), // Adjust the height as needed
                        Text(
                          "${state.weather.areaName}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        mySizedBox(height: 20),
                        getWeatherIcon(
                            code: state.weather.weatherConditionCode!),
                      ],
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          mySizedBox(height: 400),
                          Text(
                            "${state.weather.temperature!.celsius?.round()} °C",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 55,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "${state.weather.weatherMain?.toUpperCase()}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          mySizedBox(height: 10),
                          Text(
                            "Thursday 08 • 8:44 PM",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 2.1),
                          ),
                          mySizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("assets/11.png",
                                  width: 50, height: 50),
                              mySizedBox(height: 10),
                              myColumn("Sunrise", "5:13 AM"),
                              mySizedBox(width: 50),
                              Image.asset("assets/12.png",
                                  width: 50, height: 50),
                              mySizedBox(height: 10),
                              myColumn("Sunset", "6:39 PM"),
                            ],
                          ),
                          mySizedBox(height: 10),
                          Divider(
                            color: const Color.fromARGB(
                                255, 98, 98, 98), // The color of the line
                            height: 8, // The space around the divider
                            thickness: 1, // The thickness of the line
                            indent: 0, // The left padding of the line
                            endIndent: 0, // The right padding of the line
                          ),
                          mySizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("assets/13.png",
                                  width: 50, height: 50),
                              mySizedBox(height: 10),
                              myColumn("Temp Max", "28 °C"),
                              mySizedBox(width: 50),
                              Image.asset("assets/14.png",
                                  width: 50, height: 50),
                              mySizedBox(height: 10),
                              myColumn("Temp Min", "28 °C")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
