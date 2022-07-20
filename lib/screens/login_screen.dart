import 'package:flutter/material.dart';
import 'package:advice_app/roundedbutton.dart';
import 'package:advice_app/screens/registration_screen.dart';
import 'package:advice_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:advice_app/screens/feed_screen.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  String? password;
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? password;
  String? email;
  final _auth = FirebaseAuth.instance;

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
                title: 'Login',
                onPressed: () async {
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: email!, password: password!);
                    if (user != null) {
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
