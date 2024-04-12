import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hathi_app/buyer_home.dart';

import 'main.dart';

class DomesticServices extends StatefulWidget {
  const DomesticServices({Key? key}) : super(key: key);

  @override
  State<DomesticServices> createState() => _DomesticServicesState();
}

class _DomesticServicesState extends State<DomesticServices> {
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(253, 255, 241, 1),
      appBar: AppBar(
        title: !isSearching
            ? const Center(child: Text("HATHI"))
            : const TextField(
                decoration: InputDecoration(hintText: "Search"),
              ),
        foregroundColor: const Color.fromRGBO(255, 138, 0, 1),
        backgroundColor: const Color.fromRGBO(253, 255, 241, 1),
        actions: [
          IconButton(
            onPressed: toggleSearch,
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromRGBO(232, 99, 70, 1),
        child: ListView(
          children: [
            const InkWell(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 15.0),
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
                      flex: 3,
                      child: Text(
                        "Menu",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: navigateToHome,
              child: const Padding(
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
                      flex: 2,
                      child: Text(
                        "Home",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 450.0,
              width: 10.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const hathiApp(),
                  ),
                );
              },
              child: const Padding(
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
                      flex: 2,
                      child: Text(
                        "Logout",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              width: 1,
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Title(
                  color: Colors.black,
                  child: const Text(
                    "Domestic Services",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('ads')
                    .where('category', isEqualTo: 'Domestic Services')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasError) {
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  }
                  final ads = snapshot.data!.docs;
                  return ListView.builder(
                    itemCount: ads.length,
                    itemBuilder: (context, index) {
                      final ad = ads[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 4,
                          child: ListTile(
                            title: Text(
                              ad['serviceHeading'],
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Category: ${ad['category']}',
                                  style: const TextStyle(fontSize: 16),
                                ),
                                Text(
                                  'City: ${ad['city']}',
                                  style: const TextStyle(fontSize: 16),
                                ),
                                Text(
                                  'Description: ${ad['description']}',
                                  style: const TextStyle(fontSize: 16),
                                ),
                                Text(
                                  'Contact Number: ${ad['contactNumber']}',
                                  style: const TextStyle(fontSize: 16),
                                ),
                                Text(
                                  'Price: ${ad['price']}LKR',
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void toggleSearch() {
    setState(() {
      isSearching = !isSearching;
    });
  }

  // Function to navigate to the home screen
  void navigateToHome() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }
}
