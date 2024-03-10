import 'package:flutter/material.dart';
import 'payment_gateway.dart';

class SellerAdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('ADVERTISEMENTS',
        style: TextStyle(color: Colors.green)
        ), 
      ),
      body: SingleChildScrollView(
         padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Text(
              'Create your Ad!',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 36.0,
                fontWeight: FontWeight.w600,
                height: 54.0 / 36.0, // Line height
                letterSpacing: 0.0,
              ),
            ),
               SizedBox(height: 20.0),
               SizedBox(
                  width: 325.0,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Service Heading',
                      labelStyle: TextStyle(
                      color:Color.fromARGB(255, 139, 139, 139),
                      fontFamily: 'Poppins'),
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
              SizedBox(height: 20),
              DropdownButtonFormField<String>(
              decoration: InputDecoration(
              labelText: 'Category',
              labelStyle: TextStyle(
              color: Color.fromARGB(255, 139, 139, 139),
              fontFamily: 'Poppins',
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
         items: [
         DropdownMenuItem(child: Text('Domestic Services'), value: 'category1'),
         DropdownMenuItem(child: Text('Event & Entertainment '), value: 'category2'),
         DropdownMenuItem(child: Text('Vehicle service'), value: 'category3'),
         DropdownMenuItem(child: Text('Electrical services'), value: 'category4'),
         DropdownMenuItem(child: Text('Garden services'), value: 'category5'),
          DropdownMenuItem(child: Text('Health & Physical services'), value: 'category6'),

           ],
          onChanged: (value) {},
          ),

           SizedBox(height: 20.0),
SizedBox(
  width: 325.0,
  child: TextField(
    decoration: InputDecoration(
      labelText: 'Price',
      labelStyle: TextStyle(
        color: Color.fromARGB(255, 139, 139, 139),
        fontFamily: 'Poppins'
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
    keyboardType: TextInputType.number,
  ),
),
            SizedBox(height: 20.0),
SizedBox(
  width: 325.0,
  child: TextField(
    decoration: InputDecoration(
      labelText: 'City',
      labelStyle: TextStyle(
        color: Color.fromARGB(255, 139, 139, 139),
        fontFamily: 'Poppins'
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
  ),
),
           SizedBox(height: 20.0),
SizedBox(
  width: 325.0,
  child: TextField(
    decoration: InputDecoration(
      labelText: 'Your Contact Number',
      labelStyle: TextStyle(
        color: Color.fromARGB(255, 139, 139, 139),
        fontFamily: 'Poppins'
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
  ),
),SizedBox(height: 20.0),
SizedBox(
  width: 325.0,
  child: TextField(
    decoration: InputDecoration(
      labelText: 'Description',
      labelStyle: TextStyle(
        color: Color.fromARGB(255, 139, 139, 139),
        fontFamily: 'Poppins'
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
    maxLines: 3,
  ),
),
            SizedBox(height: 50),
            Text(
              'Total : LKR1000', // Add your additional text
              style: TextStyle(fontSize: 18,
              color: Colors.red[800],
              fontWeight: FontWeight.w500
              ),
            ),
            SizedBox(
              height: 20.0),
              MouseRegion(
             cursor:SystemMouseCursors.click,
             child:ElevatedButton(
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => paymentGate()));
                
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF6CB523),
                minimumSize: Size(400, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              child: Text(
                'Pay & Post',
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
    );
  }
}
    


