// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/edit_profile.dart';
import 'package:flutter_1/homepage.dart';
import 'package:flutter_1/login.dart';
import 'package:flutter_1/onboard/cover.dart';
import 'package:flutter_1/profile.dart';
import 'package:flutter_1/provider/workouts.dart';
import 'package:flutter_1/onboard/splash.dart';
import 'package:flutter_1/signup.dart';
import 'package:flutter_1/target.dart';
import 'package:flutter_1/video_page.dart';
import 'package:flutter_1/workout_detail.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'package:flutter_1/auth/auth_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final auth = Get.put(AuthPage(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: auth.streamAuthStatus,
        builder: (context, snapshot) {
          print(snapshot.data);
          return ChangeNotifierProvider(
              create: (context) => Workout(),
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                initialRoute: '/Splash',
                routes: {
                  '/Splash': (context) => const Splash(),
                  '/Cover': (context) => const Cover(),
                  '/Login': (context) => const Login(),
                  '/SignUp': (context) => const SignUp(),
                  '/Homepage': (context) => const Homepage(),
                  '/WoDetail': (context) => WoDetail(),
                  '/videoPage': (context) => Video(),
                  '/Profile': (context) => Profile(),
                  '/editProfile': (context) => editProfile(),
                  '/Target': (context) => const Target()
                },
                // home: snapshot.data != null ? Homepage() : Login(),
              ));
        });
  }
}
