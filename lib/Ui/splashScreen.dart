import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movies_g1_mon/Ui/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routeName = 'splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image(
        image: AssetImage('assets/images/splash.png'),
      ),
    );
  }
}
