
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'seller_ads.dart'; // Updated file name to match convention
import 'seller_registration.dart'; // Updated file name to match convention

class SellerLoginPage extends StatefulWidget {
  const SellerLoginPage({Key? key}) : super(key: key); // Fixed constructor

  @override
  _SellerLoginPageState createState() => _SellerLoginPageState();
}

class _SellerLoginPageState extends State<SellerLoginPage> {
  bool _isLoading = false;

  Future<void> _signIn(
      BuildContext context, String username, String password) async {
    try {
      setState(() {
        _isLoading = true;
      });

      // Sign in with Firebase using email and password
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: username,
        password: password,
      );

      // For demonstration purpose, assuming all users are sellers
      bool isSeller = true;

      // Navigate to appropriate page based on user type
      if (isSeller) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SellerAdPage()),
        );
      }
    } catch (e) {
      // Handle sign-in errors
      print('Sign-in error: $e');
      // Display error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to sign in: $e'), // Improved error message
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Seller Login'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome Seller!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 36.0,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFF6CB523),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Enter the username and password given by Hathi.',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 92, 87, 87),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20.0),
                _buildTextField(
                  controller: usernameController,
                  labelText: 'Username',
                ),
                const SizedBox(height: 20.0),
                _buildTextField(
                  controller: passwordController,
                  labelText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Add functionality for "Forget Password"
                      },
                      child: const Text(
                        'Forget Password?',
                        style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: _isLoading
                      ? null
                      : () {
                          String username = usernameController.text.trim();
                          String password = passwordController.text;

                          if (username.isNotEmpty && password.isNotEmpty) {
                            _signIn(context, username, password);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'Please enter username and password'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6CB523),
                    minimumSize: const Size(350, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  child: _isLoading
                      ? const CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                        )
                      : const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Not a Member? ',
                      style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SellerReg(),
                          ),
                        );
                      },
                      child: const Text(
                        'Register Now',
                        style: TextStyle(
                          color: Color(0xFF6CB523),
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    bool obscureText = false,
  }) {
    return SizedBox(
      width: 325.0,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Color(0xFF6CB523),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Color(0xFF6CB523)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Color(0xFF6CB523),
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
        ),
        obscureText: obscureText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
