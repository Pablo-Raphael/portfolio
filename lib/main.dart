import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Pablo Raphael',
    theme: ThemeData(
      primaryColor: Colors.blue,
    ),
    home: HomeScreen(),
  ));
}
