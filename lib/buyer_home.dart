import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: nelith(),
  ));
}

class nelith extends StatefulWidget {
  const nelith({super.key});

  @override
  State<nelith> createState() => _nelithState();
}

class _nelithState extends State<nelith> {
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 255, 241, 1),
      appBar: AppBar(
        title: !isSearching 
          ? Center(child: Text("HATHI"))
          : TextField(decoration: InputDecoration(
                hintText: "Search"
              ),
            ),
        foregroundColor: Color.fromRGBO(255, 138, 0, 1),
        backgroundColor: Color.fromRGBO(253, 255, 241, 1),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                this.isSearching = !this.isSearching;
              });
            },
            icon: Icon(Icons.search),
            ),
        ],
      ),

      drawer: Drawer(
        backgroundColor: Color.fromRGBO(255, 138, 0, 1),
        child: ListView(
          children: [
            ListTile(
              titleTextStyle: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,),
              textColor: Colors.white,
              title: Text("MENU",),
            ),
            ListTile(
              titleTextStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
              textColor: Colors.white,
              title: Text("HOME"),
              onTap: () {
                print("cLICKED");
              },
            ),
            ListTile(
              
              titleTextStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
              textColor: Colors.white,
              title: Text("Profile"),
              onTap: () {
                print("cLICKED");
              },
            )
          ],
        ),
        ),

      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[ 
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
               print('Hello');
              },
            child: Row(
              children: [
              Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/house.png')),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Domestic Services'),
                  ],
                  ),
                ],
              ),
              height: 160,
              width: 160,
              decoration: BoxDecoration(
              color: Color.fromRGBO(253, 255, 241, 1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                width: 2,
                color: Color.fromRGBO(255, 138, 0, 1),
              ),
                        ),
                        
                      ),],
            ),
            ),
        
            GestureDetector(
              onTap: () {
                print('Hello');
              },
            child: Container(
              child: Image(image: AssetImage('assets/party.png')),
                height: 160,
                width: 160,
              decoration: BoxDecoration(
              color: Color.fromRGBO(253, 255, 241, 1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
              width: 2,
              color: Color.fromRGBO(255, 138, 0, 1),
            ),
          ),
        ),
            ),
          ],
        ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
               print('Hello');
              },
            child: Container(
            child: Image(image: AssetImage('assets/car.png')),
            height: 160,
            width: 160,
            decoration: BoxDecoration(
            color: Color.fromRGBO(253, 255, 241, 1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 2,
              color: Color.fromRGBO(255, 138, 0, 1),
            ),
          ),
        ),
            ),
        
            GestureDetector(
              onTap: () {
                print('Hello');
              },
            child: Container(
              child: Image(image: AssetImage('assets/work.png')),
                height: 160,
                width: 160,
              decoration: BoxDecoration(
              color: Color.fromRGBO(253, 255, 241, 1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
              width: 2,
              color: Color.fromRGBO(255, 138, 0, 1),
            ),
          ),
        ),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
               print('Hello');
              },
            child: Container(
            child: Image(image: AssetImage('assets/garden.png')),
            height: 160,
            width: 160,
            decoration: BoxDecoration(
            color: Color.fromRGBO(253, 255, 241, 1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 2,
              color: Color.fromRGBO(255, 138, 0, 1),
            ),
          ),
        ),
            ),
        
            GestureDetector(
              onTap: () {
                print('Hello');
              },
            child: Container(
              child: Image(image: AssetImage('assets/health.png')),
                height: 160,
                width: 160,
              decoration: BoxDecoration(
              color: Color.fromRGBO(253, 255, 241, 1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
              width: 2,
              color: Color.fromRGBO(255, 138, 0, 1),
            ),
          ),
        ),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
               print('Hello');
              },
            child: Container(
            child: Image(image: AssetImage('assets/dots.png')),
            height: 160,
            width: 160,
            decoration: BoxDecoration(
            color: Color.fromRGBO(253, 255, 241, 1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 2,
              color: Color.fromRGBO(255, 138, 0, 1),
            ),
          ),
        ),
            ),


        Container(            
            height: 160,
            width: 160,
            decoration: BoxDecoration(
            color: Color.fromRGBO(253, 255, 241, 1),
          ),
        ),
        
          ],
        ),
        ]
      ),
    );
  }
}

