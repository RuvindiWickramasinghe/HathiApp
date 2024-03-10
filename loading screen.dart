import 'package:flutter/material.dart';
import 'buyer_home.dart';
import 'sellerReg.dart';

class SellerLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading Screen'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Add your logo here
                Image.asset(
                  'assets/your_logo.png',
                  width: 200.0,
                  height: 200.0,
                  // Adjust the width and height according to your logo size
                ),
                SizedBox(
                  height: 30.0,
                ),
                // Replace text fields with buttons
                ElevatedButton(
                  onPressed: () {
                    // Add functionality for "Buyer" button
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF6CB523),
                    minimumSize: Size(325, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  child: Text(
                    'Buyer',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Add functionality for "Seller" button
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF6CB523),
                    minimumSize: Size(325, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  child: Text(
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
    );
  }
}
