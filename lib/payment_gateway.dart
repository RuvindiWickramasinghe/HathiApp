import 'package:flutter/material.dart';


class paymentGate extends StatefulWidget {
  const paymentGate({super.key});

  @override
  State<paymentGate> createState() => _paymentGateState();
}

class _paymentGateState extends State<paymentGate> {
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Select payment method",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20.0),

//button 1//
            GestureDetector(
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 196, 58, 1),
                  border: Border.all(width: 1,color: Color.fromRGBO(255, 196, 58, 1)),
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                image: DecorationImage(
                  image: AssetImage("assets/paypal.png"),
                  scale: 20,
                  ),
                ),
              ),
            ),

            SizedBox(height: 15.0),

//button 1//
            GestureDetector(
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 48, 135, 1),
                  border: Border.all(width: 1,color: Color.fromRGBO(0, 48, 135, 1)),
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
              ),
            ),

            SizedBox(height: 15.0),


            GestureDetector(
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(44, 46, 47, 1),
                  border: Border.all(width: 1,color: Color.fromRGBO(44, 46, 47, 1)),
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.credit_card,
                          color: Colors.white
                          ),
                      ],
                    ),

                    SizedBox(height: 1,width: 5,),
                    
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Credit or debit card",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}