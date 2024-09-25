// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_weather_app/bloc/bloc/weather_bloc.dart';

// class MySearch extends StatelessWidget {
//   final TextEditingController controller;


//   const MySearch({
//     Key? key,
//     required this.controller,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<WeatherBloc, WeatherState>(
//       builder: (context, state) {
//         return Padding(
//           padding: EdgeInsets.all(0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextField(
//                 controller: controller,
//                 decoration: InputDecoration(
//                   hintText: 'Search for a country...',
//                   hintStyle: const TextStyle(
//                     color: Colors.white70,
//                     fontWeight: FontWeight.w300,
//                   ),
//                   prefixIcon: const Icon(Icons.search, color: Colors.white70),
//                   filled: true,
//                   fillColor: Colors.white24,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//                 style: const TextStyle(color: Colors.white),
//                 onSubmitted: (value) {
//                   if (value.isNotEmpty) {
//                     // Trigger the search event
//                     context.read<WeatherBloc>().add(SearchWeather(value));
//                   }
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
