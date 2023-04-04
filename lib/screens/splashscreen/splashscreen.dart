import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grya_tix/screens/onboarding/onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () => Get.to(
        () => OnboadingPage(),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/splashscreen.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
