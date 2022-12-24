import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/edit_profile.dart';
import 'package:flutter_1/widget/profile_menu.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            backgroundColor: Color.fromARGB(255, 212, 215, 219),
                          ),
                          onPressed: () {},
                          child: Icon(
                            Icons.edit_outlined,
                            color: Colors.black45,
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
          ProfileMenu(
            text: "Edit Profile",
            icon: Icon(Icons.person_outline, color: Colors.grey),
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => editProfile()));
            },
          ),
          ProfileMenu(text: "Your Goals", icon: Icon(Icons.fitness_center)),
          ProfileMenu(text: "Security", icon: Icon(Icons.shield)),
          ProfileMenu(text: "Help", icon: Icon(Icons.info_outline)),
          ProfileMenu(
            text: "Logout",
            icon: Icon(Icons.logout),
            press: () => FirebaseAuth.instance.signOut(),
          )
        ],
      )),
    );
  }
}
