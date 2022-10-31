import 'package:flutter/material.dart';
import 'package:flutter_1/widget/column_Cards.dart';
import 'package:flutter_1/profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;
  final screens = [
    SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
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
              SizedBox(
                height: 20,
              ),
              colCards(
                title: "Full Body Exercise",
                text: "20 Minutes | Beginner",
                image: 'full.jpg',
              ),
              SizedBox(
                height: 10,
              ),
              colCards(
                title: "Intense Abs Exercise",
                text: "10 Minutes | Beginner",
                image: 'abs.jpg',
              ),
              SizedBox(
                height: 10,
              ),
              colCards(
                title: "Tone Your Arms Exercise",
                text: "15 Minutes | Intermediate",
                image: 'arms.jpg',
              ),
              SizedBox(
                height: 10,
              ),
              colCards(
                title: "Yoga Women Exercise",
                text: "8 Minutes | Intermediate",
                image: 'yoga2.jpg',
              ),
            ],
          ),
        ),
        Profile(),
        Profile(),
  ];

  @override
  Widget build(BuildContext context) {
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
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this.currentIndex,
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
                  label: "Home"
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.leaderboard_outlined),
                  activeIcon: Icon(Icons.leaderboard),
                  label: "Leaderboard"
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  activeIcon: Icon(Icons.person),
                  label: "Profile"
                ),
                // SizedBox(
                //   width: 50,
                // ),
                // IconButton(
                //   iconSize: 30,
                //   icon: Icon(Icons.leaderboard_outlined),
                //   onPressed: () {},
                // ),
                // SizedBox(
                //   width: 50,
                // ),
                // IconButton(
                //   iconSize: 30,
                //   icon: Icon(Icons.perm_identity_outlined),
                //   onPressed: () {
                //     Navigator.of(context).push(
                //         MaterialPageRoute(builder: (context) => Profile()));
                //   },
                // ),
              ]
            )));
  }
}
