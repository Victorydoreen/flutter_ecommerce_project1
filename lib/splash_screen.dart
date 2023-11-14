import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gbstore_fashions/onboarding_screen.dart';
// import 'package:flutter_login/onboarding_screen.dart';
import 'package:gbstore_fashions/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.pink[400],
      body: Center(
        child: Text(
          "GBStore fashions",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
