import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hathi_app/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay of 2 seconds before navigating to the SignInPage
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const hathiApp()),
      ),
    );
    // Call the initTasks function
    initTasks();
  }

  // Additional function to perform initialization tasks
  void initTasks() {
    // Perform your initialization tasks here
    print('Performing initialization tasks...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/hathi_logo.png',
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.8,
            ),
          ],
        ),
      ),
    );
  }
}
