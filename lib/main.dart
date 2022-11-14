// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_1/provider/workouts.dart';
import 'package:flutter_1/onboard/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Workout(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // title: 'GoFit',
        home: Splash(),
      ),
    );
  }
}
