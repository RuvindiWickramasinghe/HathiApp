import 'package:flutter/material.dart';

class SellerAdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
         DropdownMenuItem(child: Text('Category 1'), value: 'category1'),
         DropdownMenuItem(child: Text('Category 2'), value: 'category2'),
    // Add more categories as needed
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
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(labelText: 'Your Contact Number'),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(labelText: 'Description'),
              maxLines: 3,
            ),
            SizedBox(height: 20),
            Text(
              'Some additional text here...', // Add your additional text
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add functionality for the button
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
    


