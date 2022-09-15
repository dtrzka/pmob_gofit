import 'package:flutter/material.dart';

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
            Container(
              child: Text(
                'To give you a better experience and results\nwe need to know your gender',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.grey,
              child: IconTheme(icon: Icon(Icons.male)),
            )
          ],
        )),
      ),
    );
  }
}
