import 'package:flutter/material.dart';
import 'package:flutter_1/provider/workouts.dart';
import 'package:flutter_1/workout_detail.dart';
import 'package:provider/provider.dart';
import 'package:flutter_1/widget/column_Cards.dart';
import 'package:flutter_1/profile.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final workoutData = Provider.of<Workout>(context);

    final allworkout = workoutData.allproducts;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "FitMe",
            style: TextStyle(
                color: Colors.black,
                fontSize: 23.5,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Morning, Julie!",
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
                    "Featured Workout",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: allworkout.length,
                    itemBuilder: (ctx, i) => colCards(
                        allworkout[i].id,
                        allworkout[i].title,
                        allworkout[i].text,
                        allworkout[i].image))
              ],
            )),
        bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.home),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 50,
                ),
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.leaderboard_outlined),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 50,
                ),
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.perm_identity_outlined),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                ),
              ],
            )),
      ),
      routes: {
        WoDetail.routeName: (ctx) => WoDetail(),
      },
    );
  }
}
