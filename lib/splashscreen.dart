import 'dart:async'; // Importing the async library for using Timer

import 'package:flutter/material.dart'; // Importing Flutter material package
import 'package:hathi_app/main.dart'; // Importing the main.dart file from the hathi_app package

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key}); // SplashScreen widget definition

  @override
  _SplashScreenState createState() => _SplashScreenState(); // Create state for SplashScreen
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Add a delay of 2 seconds before navigating to the SignInPage
    Timer(
      const Duration(seconds: 2), // Setting a 2-second delay
      () => Navigator.pushReplacement( // Navigating to another page after the delay
        context,
        MaterialPageRoute(builder: (context) => const hathiApp()), // Navigating to hathiApp widget
      ),
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Returning a Scaffold widget
      body: Center( // Centering the content
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/hathi_logo.png', // Loading an image asset
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.8,
              // You can adjust the width and height based on your preference
            ),
          ],
        ),
      ),
    );
  }
}
