import 'package:flutter/material.dart';

class paymentDone extends StatefulWidget {
  const paymentDone({super.key});

  @override
  State<paymentDone> createState() => _paymentDoneState();
}

class _paymentDoneState extends State<paymentDone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Title(
                color: Color.fromRGBO(108, 181, 35, 1),
                child: Text(
                  "THANK YOU!!",
                  style: TextStyle(
                      color: Color.fromRGBO(108, 181, 35, 1),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 30.0,
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/success.png",
                width: 390,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Title(
                color: Color.fromRGBO(108, 181, 35, 1),
                child: Text(
                  "Thank you for posting an advertisement in\nHathi. We are looking forward to work with\nyou in the future.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 30.0,
            height: 80.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  print("Clicked");
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(108, 181, 35, 1),
                      border: Border.all(
                          width: 1, color: Color.fromRGBO(108, 181, 35, 1)),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  padding: EdgeInsets.fromLTRB(80.0, 10.0, 80.0, 10.0),
                  child: Text(
                    "Go back to home",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
