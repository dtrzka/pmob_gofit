import 'package:flutter/material.dart';
import 'package:flutter_1/models/workout.dart';
import 'package:flutter_1/models/workoutdetail.dart';
import 'package:flutter_1/provider/workoutsets.dart';
import 'package:provider/provider.dart';
import 'package:flutter_1/widget/activity.dart';
import 'package:flutter_1/homepage.dart';
import 'package:flutter_1/provider/workouts.dart';

class WoDetail extends StatelessWidget {
  static const routeName = '/workout-detail';

  @override
  Widget build(BuildContext context) {
    final workoutId =
        ModalRoute.of(context)?.settings.arguments as String; // is the id!
    final workout = Provider.of<Workout>(context).findById(workoutId);
    final workoutData = Provider.of<Workout>(context);
    final allworkout = workoutData.allproducts;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 30,
          icon: const Icon(
            Icons.west,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
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
                  "${workout.title}",
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
              SizedBox(
                height: 15,
              ),
              /* InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Video()));
                },
                child: Activity(
                  title: "Warrior 1",
                  text: "30 seconds",
                  id: '1',
                ),
              ), */
              /* const Activity(
                title: "Warrior 1",
                text: "30 seconds",
                id: '1',
              ), */
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: exercise1.length,
                  itemBuilder: (ctx, i) => Activity(exercise1[i].title,
                      exercise1[i].text, exercise1[i].id, exercise1[i].image)),
              /* const Activity(
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
              ), */
            ],
          ),
        ),
      ),
    );
  }
}
