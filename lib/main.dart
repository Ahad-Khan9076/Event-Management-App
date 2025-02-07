import 'package:flutter/material.dart';
import 'package:ycps_society_app/views/onboarding/onboarding_page.dart';
import 'package:ycps_society_app/views/splash/splash_pagee.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
