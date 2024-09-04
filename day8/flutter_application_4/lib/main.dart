import 'package:flutter/material.dart';
import 'package:flutter_application_4/cubit/counter_cubit.dart';
import 'package:flutter_application_4/screens/explain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Explain(),
      ),
    );
  }
}
