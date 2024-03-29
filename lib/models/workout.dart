import 'package:flutter/foundation.dart';
import 'package:flutter_1/models/workoutdetail.dart';

class Workouts {
  final String id;
  final List<WorkoutSet> wosets;
  final String title;
  final String text;
  final String image;

  Workouts({
    required this.id,
    required this.wosets,
    required this.title,
    required this.text,
    required this.image,
  });
}
