import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weekly1/color.dart';
import 'package:weekly1/welcome_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay to show the splash screen for 3 seconds
    Timer(const Duration(seconds: 3), () {
      // After the delay, navigate to the home page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WelcomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 120,
              backgroundColor: ColorConst.primary,
              child: Icon(
                Icons.wifi,
                color: ColorConst.black,
                size: 160,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Spotipu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'By Aflah Alifu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
