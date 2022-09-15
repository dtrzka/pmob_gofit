import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class genderPage1 extends StatelessWidget {
  const genderPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
          children: [
            Container(
              child: Text(
                'Tell Us About Yourself',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                'To give you a better experience and results\nwe need to know yourself',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                'To give you a better experience and results\nwe need to know yourself',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        )),
      ),
    );
  }
}
