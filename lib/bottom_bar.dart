import 'package:advice_app/screens/camera_screen.dart';
import 'package:advice_app/screens/post_screen.dart';
import 'package:advice_app/screens/feed_screen.dart';
import 'package:advice_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:advice_app/main.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:fluttericon/zocial_icons.dart';

import 'screens/activity_screen.dart';

// ignore_for_file: prefer_const_constructors

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (BuildContext context) => FeedScreen(),
                ),
                (Route route) => false,
              );
            },
            icon: Icon(
              Icons.camera_roll,
              size: 40.0,
            ),),
        IconButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (BuildContext context) => PostScreen(),
              ),
              (Route route) => false,
            );
          },
          icon: Icon(
            Icons.search,
            size: 40.0,
          ),
        ),
        IconButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (BuildContext context) => CameraScreen(),
                ),
                (Route route) => false,
              );
            },
            icon: Icon(
              Icons.camera,
              size: 40.0,
            ),),
            IconButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (BuildContext context) => ActivityScreen(),
                ),
                (Route route) => false,
              );
            },
            icon: Icon(
              Icons.map,
              size: 40.0,
            ),),
            IconButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (BuildContext context) => ProfileScreen(),
                ),
                (Route route) => false,
              );
            },
            icon: Icon(
              Icons.home,
              size: 40.0,
            ),)
      ],
    );
  }
}
