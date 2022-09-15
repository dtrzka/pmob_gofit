import 'package:flutter/material.dart';
import 'package:flutter_1/login.dart';

class Cover extends StatelessWidget {
  const Cover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/back.jpg'), fit: BoxFit.cover)),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            // Ink.image(
            //   image: AssetImage('images/back.jpg'),
            //   height: 150,
            //   fit: BoxFit.cover,
            // ),
            Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 550, right: 170),
                    child: Text(
                      'Welcome To',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 30),
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 20, right: 210),
                    child: Text(
                      'FitMe',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 40, right: 100, left: 40),
                    child: Text(
                      'Find The Right Workout for What You Need',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    )),
                Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 47, 175),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: TextButton(
                      child: const Text(
                        'Next',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
