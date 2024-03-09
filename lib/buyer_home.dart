import 'package:flutter/material.dart';

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

//this is the home//

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
                print("clicked");
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
      body: 
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[ 
        
        //row one//
        
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
                            Text(
                              style:TextStyle(fontWeight: FontWeight.bold),
                              'Domestic Services'
                            ),
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
                    ),
                  ],
                ),
              ),
          
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
                          Image(image: AssetImage('assets/party.png')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          style:TextStyle(fontWeight: FontWeight.bold),
                          'Events &\n Entertainment'
                        ),
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
            ],
          ),

          SizedBox(width: 1,height: 10,),
        
        //row two//
        
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
                          Image(image: AssetImage('assets/car.png')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          style:TextStyle(fontWeight: FontWeight.bold),
                          'Vehicle Services'
                        ),
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
                          Image(image: AssetImage('assets/work.png')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          style:TextStyle(fontWeight: FontWeight.bold),
                          'Electrical Services'
                        ),
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
            ],
          ),
        
        SizedBox(width: 1,height: 10,),

        //row three//
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
                          Image(image: AssetImage('assets/garden.png')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          style:TextStyle(fontWeight: FontWeight.bold),
                          'Garden Services'
                        ),
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
                          Image(image: AssetImage('assets/health.png')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          style:TextStyle(fontWeight: FontWeight.bold),
                          'Health &\nPhysical services'
                        ),
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
            ],
          ),
        
        SizedBox(width: 1,height: 10,),

        //row four//
        
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
                          Image(image: AssetImage('assets/dots.png'),width: 70,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          style:TextStyle(fontWeight: FontWeight.bold),
                          'Other'
                        ),
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
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
        backgroundColor: Color.fromRGBO(108, 181, 35, 1),
      ),
    );
  }
}

