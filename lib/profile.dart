import 'package:flutter/material.dart';
import 'package:flutter_1/edit_profile.dart';
import 'package:flutter_1/widget/profile_menu.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            "Profile",
            style: TextStyle(
                color: Colors.black,
                fontSize: 23.5,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
                child: Center(
              child: Column(
                children: [
                  Stack(
                    // fit: StackFit.expand,
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                        foregroundImage: AssetImage("images/jay.jpg"),
                        radius: 60,
                      ),
                      Positioned(
                        right: -10,
                        bottom: 0,
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                                // side: BorderSide(color: Colors.white),
                              ),
                              primary: Colors.white,
                              backgroundColor:
                                  Color.fromARGB(255, 212, 215, 219),
                            ),
                            onPressed: () {},
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.edit_outlined,
                                color: Colors.black45,
                              ),
                              padding: EdgeInsets.all(0.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  // CircleAvatar(
                  //   backgroundColor: Colors.blueAccent,
                  //   radius: 60,
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Andrew Garfield",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Andrew Garfield@mail.you.id",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            )),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => editProfile()));
              },
              child: ProfileMenu(
                  text: "Edit Profile", icon: Icon(Icons.person_outline)),
            ),
            ProfileMenu(text: "Your Goals", icon: Icon(Icons.fitness_center)),
            ProfileMenu(text: "Security", icon: Icon(Icons.shield)),
            ProfileMenu(text: "Help", icon: Icon(Icons.info_outline)),
            ProfileMenu(text: "Logout", icon: Icon(Icons.logout))
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  },
                ),
              ],
            )));
  }
}
