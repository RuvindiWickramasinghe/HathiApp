import 'package:flutter/material.dart';

class sellerRegister3 extends StatefulWidget {
  const sellerRegister3({super.key});

  @override
  State<sellerRegister3> createState() => _sellerRegister3State();
}

class _sellerRegister3State extends State<sellerRegister3> {
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

          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 248, 230, 1),
                      border: Border.all(width: 1,color: Color.fromRGBO(255, 248, 230, 1)),
                      borderRadius: BorderRadius.all(Radius.circular(100))
                    ),
                    padding: EdgeInsets.fromLTRB(10.0,2.0,10.0,2.0),
                    child: Text(
                      "3",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(108, 181, 35, 1)
                        ),
                      ),
                  ),

                  Text(
                    "Step Three",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 248, 230, 1),
                      border: Border.all(width: 1,color: Color.fromRGBO(255, 248, 230, 1)),
                      borderRadius: BorderRadius.all(Radius.circular(100))
                    ),
                    padding: EdgeInsets.fromLTRB(10.0,2.0,10.0,2.0),
                    child: Text(
                      "3",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(108, 181, 35, 1)
                        ),
                      ),
                  ),

                  Text(
                    "Step Three",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),
              ],
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
                width: 300,
                height: 300,
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
                  "Your personal data is sent to the admins of\nHathi. You will receive your username\nand confirmed password once your request\nhas been accepted.\nWe make sure to take\ncare of the sequrity of your personal\ndetails.",
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
            height: 50.0,
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
