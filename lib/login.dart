import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/auth/auth_page.dart';
import 'package:flutter_1/homepage.dart';
import 'package:flutter_1/signup.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final auth = Get.find<AuthPage>();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              //padding: const EdgeInsets.all(10),
              child: Image.asset(
                "images/logo.png",
                fit: BoxFit.contain,
                width: 200,
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Log in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                textInputAction: TextInputAction.next,
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
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                textInputAction: TextInputAction.next,
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
            Container(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(color: Color.fromARGB(255, 13, 66, 255)),
                ),
              ),
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
                      'Login',
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    onPressed: signIn)),
            Row(
              // ignore: sort_child_properties_last
              children: [
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 255, 47, 175),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/SignUp');
                  } /* signIn */,
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }

  Future signIn() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailController.text.trim(),
              password: passwordController.text.trim())
          .then((value) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Homepage()));
      });
      ;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      ;
    }
  }
}
