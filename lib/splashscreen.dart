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
    // Check if the user is already logged in
    checkUserLoggedIn();
  }

  // Additional function to perform initialization tasks
  void initTasks() {
    // Perform your initialization tasks here
    print('Performing initialization tasks...');
  }

  // Additional function to check if the user is already logged in
  void checkUserLoggedIn() {
    // Implement your logic to check if the user is logged in
    // For example, you can check if there is a saved token or user session
    // If the user is logged in, you can navigate to the HomeScreen instead of SignInPage
    bool isLoggedIn = false; // Placeholder for demonstration
    if (isLoggedIn) {
      // Navigate to the HomeScreen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }
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
