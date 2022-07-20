import 'package:flutter/material.dart';

class post extends StatelessWidget {
  final String postContent;
  post({required this.postContent});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
      elevation: 5.0,
      child: Card(
        child: Text(postContent),
        shadowColor: Colors.pink,
      ),
    );
  }
}
