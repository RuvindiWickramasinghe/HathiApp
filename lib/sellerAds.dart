import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:hathi_app/buyer_home.dart';
import 'package:http/http.dart' as http;

import 'Profie.dart';
import 'main.dart';

class SellerAdPage extends StatefulWidget {
  const SellerAdPage({Key? key}) : super(key: key);

  @override
  _SellerAdPageState createState() => _SellerAdPageState();
}

class _SellerAdPageState extends State<SellerAdPage> {
  late String categoryValue =
      'Domestic Services'; // Default value for categoryValue

  Map<String, dynamic> paymentIntent = {};

  Future<void> makePayment() async {
    try {
      //STEP 1: Create Payment Intent
      paymentIntent = await createPaymentIntent('1000', 'USD');

      //STEP 2: Initialize Payment Sheet
      await Stripe.instance
          .initPaymentSheet(
              paymentSheetParameters: SetupPaymentSheetParameters(
                  paymentIntentClientSecret: paymentIntent[
                      'client_secret'], //Gotten from payment intent
                  style: ThemeMode.light,
                  merchantDisplayName: 'Ikay'))
          .then((value) {});

      //STEP 3: Display Payment sheet
      displayPaymentSheet();
    } catch (err) {
      throw Exception(err);
    }
  }

  createPaymentIntent(String amount, String currency) async {
    try {
      //Request body
      Map<String, dynamic> body = {
        'amount': amount,
        'currency': currency,
      };

      //Make post request to Stripe
      var response = await http.post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        headers: {
          'Authorization':
              'Bearer sk_test_51NkLR4LO1mW4ni4mJicTIjUBT9vutdldwx8ahmXWqTbRhvJtrDzizTbKI2crczF4G061R1Pi7vUVwPh64jvbyVvs00f59rB77c',
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: body,
      );
      return json.decode(response.body);
    } catch (err) {
      throw Exception(err.toString());
    }
  }

  displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet().then((value) async {
        showDialog(
            context: context,
            builder: (_) => const AlertDialog(
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 100.0,
                      ),
                      SizedBox(height: 10.0),
                      Text("Payment Successful!"),
                    ],
                  ),
                ));
        await postAd(paymentIntent['id']);
        resetFormFields();
        paymentIntent.clear();
      }).onError((error, stackTrace) {
        throw Exception(error);
      });
    } on StripeException catch (e) {
      print('Error is:---> $e');
      const AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(
                  Icons.cancel,
                  color: Colors.red,
                ),
                Text("Payment Failed"),
              ],
            ),
          ],
        ),
      );
    } catch (e) {
      print('$e');
    }
  }

  TextEditingController serviceHeadingController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController contactNumberController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    initializeStripe();
  }

  Future<void> initializeStripe() async {
    try {
      Stripe.publishableKey =
          'pk_test_51NkLR4LO1mW4ni4muH7miIdwvWaYhAAN8GnZhza9gJjNh2LamyPIsWojEysf7udLC2QLgGV7HsjinosD3Si1GGpZ00xflWcMFE'; // Replace with your Stripe publishable key
      await Stripe.instance.applySettings();
    } catch (e) {
      print('Error initializing Stripe: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'ADVERTISEMENTS',
          style: TextStyle(color: Colors.green),
        ),
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
                    builder: (context) => const HomePage(),
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Create your Ad!',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 36.0,
                fontWeight: FontWeight.w600,
                height: 54.0 / 36.0, // Line height
                letterSpacing: 0.0,
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: 325.0,
              child: TextField(
                controller: serviceHeadingController,
                decoration: InputDecoration(
                  labelText: 'Service Heading',
                  labelStyle: const TextStyle(
                    color: Color.fromARGB(255, 139, 139, 139),
                    fontFamily: 'Poppins',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: Color(0xFF6CB523)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Color(0xFF6CB523),
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              value: categoryValue,
              onChanged: (value) {
                setState(() {
                  categoryValue = value!;
                });
              },
              decoration: InputDecoration(
                labelText: 'Category',
                labelStyle: const TextStyle(
                  color: Color.fromARGB(255, 139, 139, 139),
                  fontFamily: 'Poppins',
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF6CB523)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Color(0xFF6CB523),
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
              ),
              items: const [
                DropdownMenuItem(
                  value: 'Domestic Services',
                  child: Text('Domestic Services'),
                ),
                DropdownMenuItem(
                  value: 'Event & Entertainment',
                  child: Text('Event & Entertainment'),
                ),
                DropdownMenuItem(
                  value: 'Vehicle service',
                  child: Text('Vehicle service'),
                ),
                DropdownMenuItem(
                  value: 'Electrical services',
                  child: Text('Electrical services'),
                ),
                DropdownMenuItem(
                  value: 'Garden services',
                  child: Text('Garden services'),
                ),
                DropdownMenuItem(
                  value: 'Health & Physical services',
                  child: Text('Health & Physical services'),
                ),
                DropdownMenuItem(
                  value: 'Other services',
                  child: Text('Other services'),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: 325.0,
              child: TextField(
                controller: priceController,
                decoration: InputDecoration(
                  labelText: 'Price',
                  labelStyle: const TextStyle(
                    color: Color.fromARGB(255, 139, 139, 139),
                    fontFamily: 'Poppins',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: Color(0xFF6CB523)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Color(0xFF6CB523),
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                ),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: 325.0,
              child: TextField(
                controller: cityController,
                decoration: InputDecoration(
                  labelText: 'City',
                  labelStyle: const TextStyle(
                    color: Color.fromARGB(255, 139, 139, 139),
                    fontFamily: 'Poppins',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: Color(0xFF6CB523)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Color(0xFF6CB523),
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: 325.0,
              child: TextField(
                controller: contactNumberController,
                decoration: InputDecoration(
                  labelText: 'Your Contact Number',
                  labelStyle: const TextStyle(
                    color: Color.fromARGB(255, 139, 139, 139),
                    fontFamily: 'Poppins',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: Color(0xFF6CB523)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Color(0xFF6CB523),
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: 325.0,
              child: TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description',
                  labelStyle: const TextStyle(
                    color: Color.fromARGB(255, 139, 139, 139),
                    fontFamily: 'Poppins',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: Color(0xFF6CB523)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Color(0xFF6CB523),
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                ),
                textAlign: TextAlign.center,
                maxLines: 3,
              ),
            ),
            const SizedBox(height: 50),
            Text(
              'Total : LKR1000', // Add your additional text
              style: TextStyle(
                fontSize: 18,
                color: Colors.red[800],
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async {
                makePayment();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6CB523),
                minimumSize: const Size(400, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              child: const Text(
                'Pay & Post',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<String> createStripeCustomer(String name) async {
    try {
      final response = await http.post(
        Uri.parse('https://api.stripe.com/v1/customers'),
        body: {
          'description': name, // Use UMIS_ID as metadata
        },
        headers: {
          'Authorization':
              'Bearer sk_test_51NkLR4LO1mW4ni4mJicTIjUBT9vutdldwx8ahmXWqTbRhvJtrDzizTbKI2crczF4G061R1Pi7vUVwPh64jvbyVvs00f59rB77c',
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      );
      final data = json.decode(response.body);
      return data['id'];
    } catch (e) {
      throw Exception('Error creating Stripe customer: ${e.toString()}');
    }
  }

  void resetFormFields() {
    serviceHeadingController.clear();
    priceController.clear();
    cityController.clear();
    contactNumberController.clear();
    descriptionController.clear();
    setState(() {
      categoryValue = 'Domestic Services'; // Reset category value
    });
  }

  Future<void> postAd(String paymentIntentId) async {
    try {
      // Proceed to post the ad directly
      await FirebaseFirestore.instance.collection('ads').add({
        'serviceHeading': serviceHeadingController.text,
        'category': categoryValue,
        'price': priceController.text,
        'city': cityController.text,
        'contactNumber': contactNumberController.text,
        'description': descriptionController.text,
        'paymentId':
            paymentIntentId, // Use payment intent ID received from payment
      });
    } catch (e) {
      // Handle errors
      print('Error posting ad: $e');
    }

    Future<Map<String, dynamic>?> fetchUserDetails(String userId) async {
  try {
    final DocumentSnapshot<Map<String, dynamic>> userSnapshot =
        await FirebaseFirestore.instance.collection('users').doc(userId).get();
    if (userSnapshot.exists) {
      return userSnapshot.data();
    } else {
      print('User not found');
      return null;
    }
  } catch (e) {
    print('Error fetching user details: $e');
    return null;
  }
}

  }

  Future<void> updateUserProfile(String userId, Map<String, dynamic> userData) async {
  try {
    await FirebaseFirestore.instance.collection('users').doc(userId).update(userData);
    print('User profile updated successfully');
  } catch (e) {
    print('Error updating user profile: $e');
  }
}

}
