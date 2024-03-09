import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( 
    home: sellerRegister2(),
  ));
}


class sellerRegister2 extends StatefulWidget {
  const sellerRegister2({super.key});
  @override
  State<sellerRegister2> createState() => _sellerRegister2State();

}

class _sellerRegister2State extends State<sellerRegister2> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
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
                  "Become a seller",
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
                      "2",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(108, 181, 35, 1)
                        ),
                      ),
                  ),

                  Text(
                    "Step Two",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),
              ],
            ),
            

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Title(
                color: Color.fromRGBO(108, 181, 35, 1),
                child: Text(
                  "Click the bellow button to take a picture of\nyour national Identity cart, passport or\ndrivers license. Make sure to provide true\ninformation. We guarantee to take care of\nthe security of your personal details.",
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
            height: 250.0,
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
                  padding: EdgeInsets.fromLTRB(100.0, 10.0, 100.0, 10.0),
                  child: Text(
                    "Take a photo",
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