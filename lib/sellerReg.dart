import 'package:flutter/material.dart';


class sellerReg extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seller registration'),
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
              'Fill in your details. Please make sure to provide true information.',
              style: TextStyle(
                fontSize: 17.0,
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
                      labelStyle: TextStyle(
                      color:Color(0xFF6CB523),),
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(8.0),
                         borderSide: BorderSide(color: Color(0xFF6CB523)
                         ),
                      ),
                      focusedBorder: OutlineInputBorder( // Set focused border color
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                      color: Color(0xFF6CB523), // Focused border color
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
                      labelText: 'Full name',
                      labelStyle: TextStyle(
                      color:Color(0xFF6CB523),),
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(8.0),
                         borderSide: BorderSide(color: Color(0xFF6CB523)
                         ),
                      ),
                      focusedBorder: OutlineInputBorder( // Set focused border color
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                      color: Color(0xFF6CB523), // Focused border color
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
                labelText: 'Phone Number',
                labelStyle: TextStyle(
                color: Color(0xFF6CB523),
              ),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: Color(0xFF6CB523)),
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
              keyboardType: TextInputType.phone,
  ),
),
                 SizedBox(height: 20.0),
                 SizedBox(
                 width: 325.0,
                child: TextField(
                decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                color: Color(0xFF6CB523),
      ),
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: Color(0xFF6CB523)),
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
    obscureText: true,
  ),
),
SizedBox(height: 20.0),
SizedBox(
  width: 325.0,
  child: TextField(
    decoration: InputDecoration(
      labelText: 'Confirm Password',
      labelStyle: TextStyle(
        color: Color(0xFF6CB523),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: Color(0xFF6CB523)),
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
    obscureText: true,
  ),
),
              SizedBox(
              height: 20.0),
              MouseRegion(
             cursor:SystemMouseCursors.click,
             child:ElevatedButton(
              onPressed: () {
              
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF6CB523),
                minimumSize: Size(350, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              child: Text(
                'Next',
                style: TextStyle(
                 color: Colors.white,
                 fontFamily: 'Poppins',
                 fontSize: 18,
                 ),
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