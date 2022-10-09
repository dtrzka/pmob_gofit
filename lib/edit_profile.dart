import 'package:flutter/material.dart';
import 'package:flutter_1/profile.dart';

class editProfile extends StatelessWidget {
  const editProfile({Key? key}) : super(key: key);

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
          "Edit Profile",
          style: TextStyle(
              color: Colors.black, fontSize: 23.5, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  labelText: 'Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    labelText: 'Email',
                    fillColor: Colors.black12),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 47, 175),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: TextButton(
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                )),
          ],
        ));
  }
}
