import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_1/homepage.dart';
import 'package:flutter_1/login.dart';
import 'package:flutter_1/target.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Sign(),
    );
  }
}

class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  State createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 60),
            child: const Text(
              'Fill your profile',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(right: 25, left: 25, top: 20),
            child: const Text(
              "Don't worry, you can change it later or you can skip it for now",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 50,
              child: Text(
                'Add your profile picture',
                style: TextStyle(fontSize: 12, color: Colors.white),
                textAlign: TextAlign.center,
              ),
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
                labelText: 'Username',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                labelText: 'Email',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                labelText: 'Password',
              ),
            ),
          ),
          /* Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                labelText: 'Retype Password',
              ),
            ),
          ), */
          SizedBox(
            height: 45,
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
                  'Sign Up',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: registerWithEmailAndPassword,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already have an account?'),
              SizedBox(
                width: 5,
                height: 50,
              ),
              GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Text('Sign in',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 255, 47, 175),
                      )))
            ],
          )
        ],
      ),
    );
  }

//register with email & password & save username instantly
  Future registerWithEmailAndPassword() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text.trim(),
              password: passwordController.text.trim())
          .then((value) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Target()));
      });
      await FirebaseAuth.instance.currentUser
          ?.updateDisplayName(nameController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}
