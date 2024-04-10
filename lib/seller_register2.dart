import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'seller_register3.dart';

class SellerRegister2Page extends StatefulWidget {
  const SellerRegister2Page({Key? key}) : super(key: key);

  @override
  State<SellerRegister2Page> createState() => _SellerReg2State();
}

class _SellerReg2State extends State<SellerRegister2Page> {
  late File _image;

  Future<void> _uploadImage() async {
    try {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path);
        });

        final Reference storageReference = FirebaseStorage.instance
            .ref()
            .child('user_images/${FirebaseAuth.instance.currentUser!.uid}.jpg');
        final UploadTask uploadTask = storageReference.putFile(_image);
        await uploadTask.whenComplete(() async {
          print('Image uploaded');

          // Get the download URL of the uploaded image
          String imageURL = await storageReference.getDownloadURL();

          // Update the current user's document in Firestore with the image URL
          await FirebaseFirestore.instance
              .collection('users')
              .doc(FirebaseAuth.instance.currentUser!.uid)
              .update({'image_url': imageURL});

          // Navigate to SellerRegister3Page after image upload
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const sellerRegister3()),
          );

          // Show custom snack bar on successful upload
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.green,
              content: Row(
                children: [
                  Icon(Icons.check_circle, color: Colors.white),
                  SizedBox(width: 10),
                  Text('Image uploaded', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          );
        });
      }
    } catch (e) {
      // Handle errors
      print('Error uploading image: $e');
      // Show error snack bar
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Row(
            children: [
              Icon(Icons.error_outline, color: Colors.white),
              SizedBox(width: 10),
              Text('Error uploading image',
                  style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      );
    }
  }

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
                  color: const Color.fromRGBO(108, 181, 35, 1),
                  child: const Text(
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
                      color: const Color.fromRGBO(255, 248, 230, 1),
                      border: Border.all(
                          width: 1,
                          color: const Color.fromRGBO(255, 248, 230, 1)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100))),
                  padding: const EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                  child: const Text(
                    "2",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(108, 181, 35, 1)),
                  ),
                ),
                const Text(
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
                  color: const Color.fromRGBO(108, 181, 35, 1),
                  child: const Text(
                    "Click the below button to take a picture of\nyour national Identity card, passport or\ndrivers license. Make sure to provide true\ninformation. We guarantee to take care of\nthe security of your personal details.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 30.0,
              height: 250.0,
            ),
            GestureDetector(
              onTap: _uploadImage,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(108, 181, 35, 1),
                    border: Border.all(
                        width: 1, color: const Color.fromRGBO(108, 181, 35, 1)),
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                padding: const EdgeInsets.fromLTRB(100.0, 10.0, 100.0, 10.0),
                child: const Text(
                  "Take a photo",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
