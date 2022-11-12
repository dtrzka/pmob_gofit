import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_1/homepage.dart';
import 'package:flutter_1/login.dart';
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
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              controller: nameController,
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
              controller: nameController,
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
              controller: nameController,
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
            padding:
                const EdgeInsets.only(left: 20, top: 10, right: 30, bottom: 10),
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
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(children: [
              Expanded(
                  child: SizedBox(
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 245, 225, 237),
                      foregroundColor: Colors.black),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Back",
                    style: TextStyle(color: Color.fromARGB(255, 255, 47, 175)),
                  ),
                ),
              )),
              SizedBox(
                width: 15,
              ),
              Expanded(
                  child: SizedBox(
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 47, 175),
                      foregroundColor: Colors.black),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Homepage();
                    }), (r) {
                      return false;
                    });
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              )),
            ]),
          )
          // Row(
          //   children: [
          //     SizedBox(
          //       width: 30,
          //     ),
          //     Container(
          //         decoration: BoxDecoration(
          //           color: Color.fromARGB(255, 245, 225, 237),
          //           borderRadius: BorderRadius.circular(10),
          //         ),
          //         height: 50,
          //         padding: const EdgeInsets.only(right: 50, left: 50),
          //         child: TextButton(
          //           child: const Text(
          //             'Back',
          //             style:
          //                 TextStyle(color: Color.fromARGB(255, 255, 47, 175)),
          //           ),
          //           onPressed: () {
          //             Navigator.pushReplacement(context,
          //                 MaterialPageRoute(builder: (context) => SignUp()));
          //           },
          //         )),
          //     SizedBox(
          //       width: 20,
          //     ),
          //     Container(
          //         decoration: BoxDecoration(
          //           color: const Color.fromARGB(255, 255, 47, 175),
          //           borderRadius: BorderRadius.circular(10),
          //         ),
          //         height: 50,
          //         padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
          //         child: TextButton(
          //           child: const Text(
          //             'Sign Up',
          //             style:
          //                 TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          //           ),
          //           onPressed: () {
          //             Navigator.pushReplacement(context,
          //                 MaterialPageRoute(builder: (context) => Homepage()));
          //           },
          //         )),
          //   ],
          // ),
        ],
      ),
    );
  }
}
