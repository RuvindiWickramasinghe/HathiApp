import 'package:flutter/material.dart';
import 'buyer_home.dart';
import 'buyerRegister.dart';

class BuyerLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buyer Login'),
      ),
      body:  SingleChildScrollView(
        child:Center(
        child:Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome Back!',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 36.0,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 219, 80, 33),
                height: 54.0 / 36.0, // Line height
                letterSpacing: 0.0,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Enter your E-mail and password to continue browsing.',
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Colors.black,
                height: 23.0 / 15.0,
                letterSpacing: 0.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
               SizedBox(
                  width: 325.0,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(8.0),
                         borderSide: BorderSide(color: Color.fromARGB(255, 100, 98, 95)
                         ),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
            SizedBox(height: 20.0),
                SizedBox(
                  width: 325.0,
                  child: TextField(
                  decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(8.0),
                     borderSide: BorderSide(color: Color.fromARGB(255, 147, 151, 143)
                     ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    
                    obscureText: true, // Hide the password
                  ),
                ),
                 SizedBox(height: 20.0),
                 Padding(
                 padding: EdgeInsets.only(right: 35.0), 
                 child: Row(
                 mainAxisAlignment: MainAxisAlignment.end, 
                  children: [
                GestureDetector(
                  onTap: () {
                    // Add functionality for "Forget Password"
                  },
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'
                    
                    ),
                  ),
                ),
              ],
            ),
          ),
            SizedBox(
              height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));// Add your login functionality here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 203, 121, 39),
                minimumSize: Size(350, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              child: Text(
                'Sign In',
                style: TextStyle(
                 color: Colors.white,
                 fontFamily: 'Poppins',
                 fontSize: 18,
                 ),
              ),
            ),
        
                   SizedBox(height: 20.0),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
                  'Not a Member? ',
                  style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic
            ),
           ),
          GestureDetector(
        onTap: () {
          Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BuyerRegisterPage()),
                     );
      },
      child: Text(
        'Register Now',
         style: TextStyle(
         color: Color.fromARGB(255, 200, 128, 51),
        fontStyle: FontStyle.italic
          
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
}
