import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_1/homepage.dart';
import 'package:flutter_1/login.dart';
import 'package:flutter_1/models/user.dart';
import 'package:flutter_1/profile.dart';
import 'package:flutter_1/signup.dart';

void main() => runApp(const UserTarget());

class UserTarget extends StatelessWidget {
  const UserTarget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Target(),
    );
  }
}

class Target extends StatefulWidget {
  const Target({Key? key}) : super(key: key);

  @override
  State createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State {
  TextEditingController ageController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 60, 15, 0),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(15),
              child: const Text(
                'Tell Us About Yourself',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(right: 25, left: 25, bottom: 20),
              child: const Text(
                "To give you better experience, we need to know about your age, gender, height (in cm), and weight (in kg)",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: ageController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  labelText: 'Age',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: weightController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  labelText: 'Height (cm)',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: heightController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  labelText: 'Weight (kg)',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 20, top: 10, right: 30, bottom: 10),
              child: Text(
                "Gender",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Radio(
                        value: "male",
                        // Semisal mau ganti warna radio buttonya, ini di uncomment
                        // fillColor: MaterialStateColor.resolveWith((states) => Color.fromARGB(255, 255, 47, 175)),
                        groupValue: gender,
                        onChanged: (value) {
                          setState(
                            () {
                              gender = value.toString();
                            },
                          );
                        },
                      ),
                      Expanded(child: Text('Male'))
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Radio(
                        value: "female",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                      Expanded(child: Text('Female'))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
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
                    'Done',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  onPressed: createUser,
                )),
          ],
        ),
      ),
    );
  }

  Future<void> createUser() async {
    try {
      await FirebaseFirestore.instance.collection('users').add({
        'age': int.parse(ageController.text),
        'weight': int.parse(weightController.text),
        'height': int.parse(heightController.text),
      }).then((value) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Profile()));
      });
    } catch (e) {
      print(e);
    }
  }
}
