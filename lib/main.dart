import 'package:flutter/material.dart';
import 'seller_login.dart';
import 'buyerlogin.dart';


void main() {
  runApp(MaterialApp(
    home: hathiApp(),
  ));
}
class hathiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
      body:Center( 
        child:SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              
                Image.asset(
                  'assets/hathi_logo.png',
                  width: 200.0,
                  height: 200.0,
                
                ),
                SizedBox(height: 10.0),
                // Description text
                Text(
                  'You can buy and sell services',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                // Replace text fields with buttons
                ElevatedButton(
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => BuyerLoginPage()));  
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 214, 128, 23),
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
                     Navigator.push(context, MaterialPageRoute(builder: (context) => SellerLoginPage()));  
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
     ),
     ),
    );
    
  }
}
