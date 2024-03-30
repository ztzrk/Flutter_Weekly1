import 'package:flutter/material.dart';
import 'package:weekly1/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Spotipu',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
