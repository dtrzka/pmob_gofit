import 'package:flutter/material.dart';

void main() => runApp(const Steps());

class Steps extends StatelessWidget {
  const Steps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              //padding: const EdgeInsets.all(10),
              child: Image.asset(
                "images/step 1.gif",
                fit: BoxFit.contain,
                //width: 200,
              ),
            ),
            const SizedBox(
                height: 20,
              ),
            Text(
              //"Stand with your feet together and your hands at your sides",
              "Step Jack",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 18,
                
                ),
                ),
            const SizedBox(
                height: 20,
              ),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Stand with your feet together and your hands at your sides'),
                ),
                ),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Take a lateral step and clap your hands above your head at the same time'),
                ),
                ),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Return to the starting position'),
                ),
                ),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Repeat'),
                ),
                ),
             ],
             
        )
        ));
  }
  }