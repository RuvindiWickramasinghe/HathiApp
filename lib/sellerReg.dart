import 'package:flutter/material.dart';

class sellerReg extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destination Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to the source page when the button is pressed
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}