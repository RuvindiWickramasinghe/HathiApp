import 'package:flutter/material.dart';
import 'package:flutter_application_1/buyer_home.dart';

class electric extends StatefulWidget {
  const electric({super.key});

  @override
  State<electric> createState() => _electricState();
}

class _electricState extends State<electric> {
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

//this is the menu//

      drawer: Drawer(
        backgroundColor: Color.fromRGBO(232, 99, 70, 1),
        child: ListView(
          children: [
            InkWell(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0.0,30.0,0.0,15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 28.0,
                        color: Colors.white,
                        ),
                      ),
                      Expanded(
                        flex:3,
                        child:Text(
                          "Menu",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                      )
                  ],
                ),
                ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.home,
                        size: 28.0,
                        color: Colors.white,
                        ),
                      ),
                      Expanded(
                        flex:2,
                        child:Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                      )
                  ],
                ),
                ),
            ),
            
            InkWell(
              onTap: (){
                print("clicked");
              },
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.person,
                        size: 28.0,
                        color: Colors.white,
                        ),
                      ),
                      Expanded(
                        flex:2,
                        child:Text(
                          "Profile",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                      )
                  ],
                ),
                ),
            ),

            SizedBox(height: 450.0,width: 10.0,),

            InkWell(
              onTap: (){
                print("clicked");
              },
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.logout,
                        size: 28.0,
                        color: Colors.white,
                        ),
                      ),
                      Expanded(
                        flex:2,
                        child:Text(
                          "Logout",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                      )
                  ],
                ),
                ),
            ),
          ],
        ),
      ),

//this is the body//
      body: Center(
        child: Column(
          children: [
            SizedBox(width: 1,height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Title(color: Colors.black,
                        child: Text(
                          "Electric Services",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}