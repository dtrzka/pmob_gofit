import 'package:flutter/material.dart';
import 'package:flutter_1/homepage.dart';
import 'package:flutter_1/onboard/cover.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Cover()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        // color: Colors.black,
        child: Image(image: const AssetImage('images/logo.png')),
      )),
    );
  }
}
