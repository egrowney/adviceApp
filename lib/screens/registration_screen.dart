import 'package:advice_app/screens/feed_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:advice_app/constants.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:advice_app/roundedbutton.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';
  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;

  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration: kInputDecoration.copyWith(hintText: 'Email'),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              decoration: kInputDecoration.copyWith(hintText: 'Password'),
            ),
            RoundedButton(
                title: 'Register',
                onPressed: () async {
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email!, password: password!);
                    if (newUser != null) {
                      // ignore: use_build_context_synchronously
                      Navigator.pushNamed(context, FeedScreen.id);
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                color: Colors.white)
          ],
        ),
      ),
    );
  }
}
