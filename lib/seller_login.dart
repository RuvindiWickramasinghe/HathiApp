import 'package:flutter/material.dart';
import 'buyer_home.dart';
import 'sellerReg.dart';

class SellerLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seller Login'),
      ),
      body:  SingleChildScrollView(
        child:Center(
        child:Padding(
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
            SizedBox(
              height: 30.0,
              
            ),
            Text(
              'Enter the username and password given by Hathi.',
              style: TextStyle(
                fontSize: 17.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(255, 92, 87, 87),
                height: 23.0 / 17.0,
                letterSpacing: 0.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
               SizedBox(
                  width: 325.0,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                      color:Color(0xFF6CB523),),
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(8.0),
                         borderSide: BorderSide(color: Color(0xFF6CB523)
                         ),
                      ),
                      focusedBorder: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                      color: Color(0xFF6CB523), 
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
                  labelStyle: TextStyle(
                      color:Color(0xFF6CB523),),
                  border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(8.0),
                     borderSide: BorderSide(color: Color(0xFF6CB523)
                     ),
                  ),
                  focusedBorder: OutlineInputBorder( 
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                  color: Color(0xFF6CB523),
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
                  MouseRegion(
                 cursor: SystemMouseCursors.click,
                child:GestureDetector(
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
              ),
              ],
            ),
          ),
            SizedBox(
              height: 20.0),
              MouseRegion(
             cursor:SystemMouseCursors.click,
             child:ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF6CB523),
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
                   MouseRegion(
                   cursor: SystemMouseCursors.click,
                   child:GestureDetector(
                   onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => sellerReg()), // Using a different name for the destination page
                     );
                   },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => sellerReg()),
                );
                    },
                    child: Text(
                    'Register Now',
                    style: TextStyle(
                    color: Color(0xFF6CB523),
                    fontStyle: FontStyle.italic
                             ), 
                            ),
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
