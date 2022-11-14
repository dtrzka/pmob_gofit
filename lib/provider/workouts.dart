import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_1/models/workout.dart';
import 'package:flutter_1/provider/workoutsets.dart';

class Workout with ChangeNotifier {
  List<Workouts> _allWo = [
    Workouts(
        id: "1",
        wosets: exercise1,
        title: "Full Body Exercise",
        text: "20 Minutes | Beginner",
        image: 'full.jpg'),
    Workouts(
        id: "2",
        wosets: exercise2,
        title: "Intense Abs Exercise",
        text: "10 Minutes | Beginner",
        image: 'abs.jpg'),
    Workouts(
        id: "3",
        wosets: exercise1,
        title: "Tone Your Arms Exercise",
        text: "15 Minutes | Intermediate",
        image: 'arms.jpg'),
    Workouts(
        id: "4",
        wosets: exercise2,
        title: "Yoga Women Exercise",
        text: "8 Minutes | Intermediate",
        image: 'yoga2.jpg'),
  ];

  List<Workouts> get allproducts {
    return [..._allWo];
  }

  Workouts findById(workoutId) {
    return _allWo.firstWhere((woId) => woId.id == workoutId);
  }

  // void addProduct() {
  //   _allproducts.add(value);
  //   notifyListeners();
  // }
}
