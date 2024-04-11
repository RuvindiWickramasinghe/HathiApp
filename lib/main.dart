import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hathi_app/buyer_home.dart';
import 'package:permission_handler/permission_handler.dart';

import 'buyerlogin.dart';
import 'seller_login.dart';
import 'splashscreen.dart';

// Main function, entry point of the application
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Firebase
  await Firebase.initializeApp();
  
  // Initialize the app
  await _initializeApp();
  
  // Run the app
  runApp(const MyApp());
}

// Function to initialize the app
Future<void> _initializeApp() async {
  // Request necessary permissions here
  await _requestPermissions();
}

// Function to request permissions
Future<void> _requestPermissions() async {
  try {
    // Request camera permission
    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
    ].request();

    // Check if camera permission is granted
    if (statuses[Permission.camera] == PermissionStatus.granted) {
      // Camera permission granted
      print('Camera permission granted.');
    } else {
      // Camera permission not granted
      print('Camera permission not granted.');
    }
  } catch (e) {
    // Handle exceptions if there are any issues with the permission request
    print('Error requesting permissions: $e');
  }
}

// Main application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hathi App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // Set the initial route to SplashScreen
      initialRoute: '/splash',
      // Define routes
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/home': (context) => const hathiApp(),
        '/buyerhome': (context) => const HomePage(),
      },
    );
  }
}

// Widget for the main screen of the app
class hathiApp extends StatelessWidget {
  const hathiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/hathi_logo.png',
                      width: 200.0,
                      height: 200.0,
                    ),
                    const SizedBox(height: 10.0),
                    // Description text
                    const Text(
                      'You can buy and sell services',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    // Button for Buyer login
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BuyerLoginPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 214, 128, 23),
                        minimumSize: const Size(325, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      child: const Text(
                        'Buyer',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    // Button for Seller login
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SellerLoginPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6CB523),
                        minimumSize: const Size(325, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      child: const Text(
                        'Seller',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
