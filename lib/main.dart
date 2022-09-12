// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/column_Cards.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "GoFit",
            style: TextStyle(
                color: Colors.black,
                fontSize: 23.5,
                fontWeight: FontWeight.bold),
            // style: GoogleFonts.acme(
            //     textStyle: (Theme.of(context).textTheme.headline4),
            //     color: Colors.black,
            //     fontSize: 20,
            //     fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(12),
            child: Container(
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
                    image: AssetImage('images/full.jpg'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  colCards(
                    title: "Intense Abs Exercise",
                    text: "10 Minutes | Beginner",
                    image: AssetImage('images/abs.jpg'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  colCards(
                    title: "Tone Your Arms Exercise",
                    text: "15 Minutes | Intermediate",
                    image: AssetImage('images/arms.jpg'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  colCards(
                    title: "Tone Your Arms Exercise",
                    text: "15 Minutes | Intermediate",
                    image: AssetImage('images/arms.jpg'),
                  ),
                  // colCards(
                  //     title: "Full Body Workout", text: "20 Minutes | Beginner")
                ],
              ),
            ),
          ),
        ),
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
                  icon: Icon(Icons.view_module_outlined),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 50,
                ),
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.perm_identity_outlined),
                  onPressed: () {},
                ),
              ],
            )),
      ),
    );
  }
}

/* class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> myList = [
    {
      // "Images": AssetImage("Images/full.jpg"),
      "Title": "Full Body Workout",
      "Timer": "25 Minutes | Beginner"
    },
    {
      // "Images": AssetImage("Images/abs.jpg"),
      "Title": "Abs Workout",
      "Timer": "10 Minutes | Intermediate"
    },
    {
      // "Images": AssetImage("Images/arms.jpg"),
      "Title": "Toned Arms Workout",
      "Timer": "10 Minutes | Beginner"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "GoFit",
            style: TextStyle(color: Color.fromARGB(215, 0, 0, 0)),
          ),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        body: GridView.count(
          crossAxisCount: 1,
          children: [
            CustomCard(
                title: "Ngendas cok",
                image: "https://unsplash.com/photos/0Wra5YYVQJE"),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  //ini adalah konstruktor, saat class dipanggil parameter konstruktor wajib diisi
  //parameter ini akan mengisi title dan gambar pada setiap card
  CustomCard({required this.title, required this.image});

  String title;
  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(
        //menambahkan bayangan
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(title),
            )
          ],
        ),
      ),
    );
  }
} */
