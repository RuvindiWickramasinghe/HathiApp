import 'package:flutter/material.dart';

class SellerLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seller Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Seller Login Page',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            // Add your login form widgets here
          ],
        ),
      ),
    );
  }
}
