import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'main.dart';
import 'sellerAds.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<Profile> {
  late TextEditingController _emailController;
  late TextEditingController _fullNameController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _roleController;

  late String _userId;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _fullNameController = TextEditingController();
    _phoneNumberController = TextEditingController();
    _roleController = TextEditingController();
    _fetchUserData();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _fullNameController.dispose();
    _phoneNumberController.dispose();
    _roleController.dispose();
    super.dispose();
  }

  void _fetchUserData() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      _userId = user.uid;
      // Fetch user data from Firestore using current user's UID
      DocumentSnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
          .instance
          .collection('users')
          .doc(_userId)
          .get();
      Map<String, dynamic>? userData = snapshot.data();
      if (userData != null) {
        setState(() {
          _emailController.text = userData['email'];
          _fullNameController.text = userData['full_name'];
          _phoneNumberController.text = userData['phone_number'];
          _roleController.text = userData['role'];
        });
      }
    }
  }

  void _updateUserData() async {
    // Update user data in Firestore using current user's UID
    await FirebaseFirestore.instance.collection('users').doc(_userId).update({
      'email': _emailController.text,
      'full_name': _fullNameController.text,
      'phone_number': _phoneNumberController.text,
      'role': _roleController.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            onPressed: _updateUserData,
            icon: const Icon(Icons.save),
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SellerAdPage(),
                  ),
                );
              },
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
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Profile(),
                  ),
                );
              },
              child: const Padding(
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
                      flex: 2,
                      child: Text(
                        "Profile",
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Email'),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 16.0),
            const Text('Full Name'),
            TextField(
              controller: _fullNameController,
              decoration: const InputDecoration(
                hintText: 'Enter your full name',
              ),
            ),
            const SizedBox(height: 16.0),
            const Text('Phone Number'),
            TextField(
              controller: _phoneNumberController,
              decoration: const InputDecoration(
                hintText: 'Enter your phone number',
              ),
            ),
            const SizedBox(height: 16.0),
            const Text('Role'),
            TextField(
              controller: _roleController,
              decoration: const InputDecoration(
                hintText: 'Enter your role',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
