import 'dart:ui';

import 'package:advice_app/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:advice_app/bottom_bar.dart';


import 'package:english_words/english_words.dart';
// ignore_for_file: prefer_const_constructors

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
  static String id = 'profile_screen';
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Profile'),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: const [
                          CircleAvatar(radius: 50.0
                              //backgroundImage: AssetImage();
                              ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Expanded(
                            child: Text('Your post will go here')
                            // ListView.builder(
                            //   padding: const EdgeInsets.all(16.0),
                            //   itemBuilder: /*1*/ (context, i) {
                            //     if (i.isOdd) {
                            //       return const Divider(
                            //           color: Colors.black, thickness: 1.0); /*2*/
                            //     }
                            //     final index = i ~/ 2; /*3*/
                            //     // if (index >= myPost.length) {
                            //     //   myPost.addAll(nouns.take(10)); /*4*/
                            //     // }
                            //     // #docregion listTile
                            //     return ListTile(
                            //       title: Text(
                            //         myPost[index],
                            //         style: TextStyle(color: Colors.black),
                            //       ),
                            //     );
                            //     // #enddocregion listTile
                            //   },
                              // #enddocregion itemBuilder
                            ),
                        ],
                      ),
                    )),
              ),
              Expanded(flex: 1, child: BottomBar()),
            ],
          )),
    );
  }
}
