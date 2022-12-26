import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/provider/workouts.dart';
import 'package:flutter_1/workout_detail.dart';
import 'package:provider/provider.dart';
import 'package:flutter_1/leaderboard.dart';
import 'package:flutter_1/widget/column_Cards.dart';
import 'package:flutter_1/profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

Map<String, WidgetBuilder> routes = {
  "/workout-detail": (context) => WoDetail()
};

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    final workoutData = Provider.of<Workout>(context);
    final allworkout = workoutData.allproducts;
    final screens = [
      SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Good Morning, ${user.displayName}",
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
            SizedBox(
              height: 20,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: allworkout.length,
                itemBuilder: (ctx, i) => colCards(
                    allworkout[i].id,
                    allworkout[i].title,
                    allworkout[i].text,
                    allworkout[i].image))
          ],
        ),
      ),
      Leaderboard(),
      Profile(),
    ];

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: routes,
        initialRoute: '/',
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
            body: screens[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: currentIndex,
                onTap: (index) => setState(() {
                      currentIndex = index;
                    }),
                showUnselectedLabels: false,
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.black,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined),
                      activeIcon: Icon(Icons.home),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.leaderboard_outlined),
                      activeIcon: Icon(Icons.leaderboard),
                      label: "Leaderboard"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_outline),
                      activeIcon: Icon(Icons.person),
                      label: "Profile"),
                ])));
  }
}
