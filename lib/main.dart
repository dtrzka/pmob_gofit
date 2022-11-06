// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_1/gifstep.dart';
import 'package:flutter_1/widget/column_Cards.dart';
import 'package:flutter_1/onboard/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'GoFit',
      home: Steps(),
    );
  }
}
