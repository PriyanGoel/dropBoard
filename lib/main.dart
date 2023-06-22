import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_college_dashboard/homeScreen.dart';
import 'package:flutter_college_dashboard/homepage.dart';
import 'package:flutter_college_dashboard/splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
    //routes:{
    //"/": (context) =>HomeScreen(),
    //}
  ));
}
