import 'package:advice_app/bottom_bar.dart';
import 'package:advice_app/constants.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

// ignore_for_file: prefer_const_constructors

class PostScreen extends StatefulWidget {
  @override
  State<PostScreen> createState() => _PostScreenState();
  static String id = 'post_screen';
}

class _PostScreenState extends State<PostScreen> {
  CameraController? controller;
  bool _isCameraInitialized = false;
  String? currentPost;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextField(
                  
                    onChanged: ((value) {
                      currentPost = value;
                      print(value);
                    }),
                    maxLines: null,
                    decoration: kInputDecoration.copyWith(hintText: 'Search for user, location, or monument')
                  ),
                  TextButton(
                      onPressed: () {
                        print('new post');
                      },
                      child: Text(
                        'Search',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            ),
          ),
          const Expanded(flex: 1, child: BottomBar())
        ],
      ),
    );
  }
}
