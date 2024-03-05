import 'package:flutter/material.dart';

class SellerLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seller Login'),
      ),
      body:Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome Seller!',
              style: TextStyle(
               fontFamily: 'Poppins',
                fontSize: 36.0,
                fontWeight: FontWeight.w800,
                color: Color(0xFF6CB523),
                height: 54.0 / 36.0, // Line height
                letterSpacing: 0.0,
                ),
            ),
            SizedBox(height: 20.0,),
            Text(
              'Enter the username and password given by Hathi.',
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Colors.black,
                height: 23.0/15.0,
                letterSpacing:0.0,
                ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true, // Hide the password
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Add your login functionality here
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
