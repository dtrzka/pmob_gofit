import 'package:flutter/material.dart';
import 'package:flutter_1/widget/activity.dart';
import 'package:flutter_1/homepage.dart';
import 'package:flutter_1/main.dart';

class WoDetail extends StatelessWidget {
  final String title;
  const WoDetail({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 30,
          icon: const Icon(
            Icons.west,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 32,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Workout Activity",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              const Activity(
                title: "Warrior 1",
                text: "30 seconds",
                id: '1',
              ),
              const Activity(
                title: "Warrior 1",
                text: "30 seconds",
                id: '2',
              ),
              const Activity(
                title: "Warrior 1",
                text: "30 seconds",
                id: '3',
              ),
              const Activity(
                title: "Warrior 1",
                text: "30 seconds",
                id: '2',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
