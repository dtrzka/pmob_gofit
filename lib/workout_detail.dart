import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class woDetail extends StatelessWidget {
  const woDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 30,
          icon: Icon(Icons.arrow_left),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Yoga Women Exercise",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 40,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Workout Activity",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
                Card(
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child:
                              Ink.image(image: AssetImage('images/yoga1.jpg')),
                        ),
                        Container(
                          child: Column(
                          children: [
                            Positioned(
                                child: Text(
                              "Yoga 1",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            )),
                            Positioned(
                                child: Text(
                              "30 Seconds",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ))
                          ],
                        ))
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
