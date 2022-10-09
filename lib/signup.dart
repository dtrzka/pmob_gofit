import 'package:flutter/material.dart';

void main() => runApp(const SignUp());

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
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    String? gender;

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Fill your profile',
                style: TextStyle(fontSize: 20),
                ),
            ),
          SizedBox(height: 15),
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 50,
              child: Text(
                'Change your profile picture',
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
                  borderRadius: BorderRadius.all(Radius.circular(15),),
                  ),
                  labelText: 'Username',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15),),
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
                  borderRadius: BorderRadius.all(Radius.circular(15),),
                ),
                labelText: 'Password',
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
                  borderRadius: BorderRadius.all(Radius.circular(15),),
                  ),
                labelText: 'Retype Password',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15),),
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
                  borderRadius: BorderRadius.all(Radius.circular(15),),
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
                  borderRadius: BorderRadius.all(Radius.circular(15),),
                ),
                labelText: 'Weight (kg)',
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Radio(
                      value: "male", 
                      groupValue: gender, 
                      onChanged: (value){
                        setState(() {
                          gender = value.toString();
                          },);
                      },),
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
                      onChanged: (value){
                        setState(() {
                          gender = value.toString();
                          });
                      },
                    ),
                    Expanded(child: Text('Female'))
                  ],
                ),
              ),
          ],),
          SizedBox(height: 15,),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 47, 175),
              borderRadius: BorderRadius.circular(10),
              ),
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextButton(
                child: const Text(
                  'Regist',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                onPressed: () {
                },
              )),
          Row(
            // ignore: sort_child_properties_last
            children: [
              const Text('Already have an account?'),
              TextButton(
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 255, 47, 175),
                  ),
                ),
                onPressed: () {
                  //login screen
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            ),
        ],
      ),
    );
  }
}