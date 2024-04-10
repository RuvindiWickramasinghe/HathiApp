import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hathi_app/buyerlogin.dart';

class BuyerRegisterPage extends StatefulWidget {
  const BuyerRegisterPage({Key? key}) : super(key: key);

  @override
  _BuyerRegisterPageState createState() => _BuyerRegisterPageState();
}

class _BuyerRegisterPageState extends State<BuyerRegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool isLoading = false; // Add a boolean to track loading state

  void registerUser() async {
    setState(() {
      isLoading = true; // Set loading to true when registration begins
    });

    try {
      // Check if passwords match
      if (passwordController.text == confirmPasswordController.text) {
        // Create user with email and password
        UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );

        // Add additional user data to Firestore
        await FirebaseFirestore.instance
            .collection('users')
            .doc(userCredential.user!.uid)
            .set({
          'email': emailController.text,
          'role': 'buyer', // Set the role as buyer
        });

        // Navigate to the buyer home page after successful registration
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => BuyerLoginPage()),
        );
      } else {
        // Passwords do not match, show error message
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Passwords do not match'),
          ),
        );
      }
    } catch (error) {
      // Handle registration errors
      print('Registration failed: $error');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Registration failed: $error'),
        ),
      );
    } finally {
      setState(() {
        isLoading =
            false; // Set loading to false when registration is completed or failed
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buyer Register'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Register Here!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 36.0,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 219, 80, 33),
                    height: 54.0 / 36.0, // Line height
                    letterSpacing: 0.0,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                // Email TextField
                SizedBox(
                  width: 325.0,
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 100, 98, 95)),
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20.0),
                // Password TextField
                SizedBox(
                  width: 325.0,
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 147, 151, 143)),
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    obscureText: true, // Hide the password
                  ),
                ),
                const SizedBox(height: 20.0),
                // Confirm Password TextField
                SizedBox(
                  width: 325.0,
                  child: TextField(
                    controller: confirmPasswordController,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 147, 151, 143)),
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    obscureText: true, // Hide the password
                  ),
                ),
                const SizedBox(height: 20.0),
                // Register Button with loading indicator
                ElevatedButton(
                  onPressed: isLoading
                      ? null
                      : registerUser, // Disable button if loading
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 203, 121, 39),
                    minimumSize: const Size(350, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  child: isLoading
                      ? const CircularProgressIndicator() // Show loading indicator if isLoading is true
                      : const Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 18,
                          ),
                        ),
                ),
                const SizedBox(height: 20.0),
                // Sign In Link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account ',
                      style: TextStyle(
                          color: Colors.black, fontStyle: FontStyle.italic),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                            color: Color.fromARGB(255, 200, 128, 51),
                            fontStyle: FontStyle.italic),
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
}
