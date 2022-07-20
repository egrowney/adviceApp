import 'package:flutter/material.dart';

const div = Divider(
  thickness: 2.0,
  height: 2.0,
  indent: null,
  endIndent: null,
  color: Colors.black,
);

const kInputDecoration = InputDecoration(
  hintText: '',
  hintStyle: TextStyle(color: Colors.grey),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 8, 45, 75), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 8, 45, 75), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);